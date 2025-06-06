import 'package:flutter/material.dart';
import 'package:projeto_novo/data/models/genrer_list.dart';
import 'package:projeto_novo/presenter/components/custom_app_bar.dart';
import 'package:projeto_novo/presenter/components/movie.card.dart';
import 'package:projeto_novo/presenter/components/ui/custom_box.dart';
import 'package:projeto_novo/themes/colors.dart';

class MovieDetailsPage extends StatelessWidget {
  final String imgUrl;
  final String title;
  final List<Genres> genres;
  final String overView;
  final String originalTitle;

  const MovieDetailsPage({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.genres,
    required this.overView,
    required this.originalTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 48, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomAppBar(),
              const SizedBox(height: 56),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52),
                child: MovieCard(
                  originalTitle: originalTitle,
                  overView: overView,
                  title: title,
                  imgUrl: imgUrl,
                  genres: const [],
                  height: 318,
                ),
              ),
              const SizedBox(height: 32),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: ThemeColors.green1,
                    fontSize: 24,
                  ),
                  text: '7.2',
                  children: [
                    TextSpan(
                      text: '/ 10',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(color: ThemeColors.gray1),
              ),
              const SizedBox(height: 12),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headlineMedium,
                  text: 'Título original : ',
                  children: [
                    TextSpan(
                      text: originalTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomBox(
                    boxType: CustomBoxType.description,
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall!.copyWith(fontSize: 12),
                        text: 'Ano : ',
                        children: [
                          TextSpan(
                            text: '2019',
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(color: ThemeColors.gray1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  CustomBox(
                    boxType: CustomBoxType.description,
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall!.copyWith(fontSize: 12),
                        text: 'Duração : ',
                        children: [
                          TextSpan(
                            text: '1h 20 min',
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(color: ThemeColors.gray1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomBox(
                    boxType: CustomBoxType.genrer,
                    child: Text(
                      'AÇÃO',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: ThemeColors.gray2,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  CustomBox(
                    boxType: CustomBoxType.genrer,
                    child: Text(
                      'AVENTURA',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: ThemeColors.gray2,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  CustomBox(
                    boxType: CustomBoxType.genrer,
                    child: Text(
                      'SCI-FI',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: ThemeColors.gray2,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 56),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Descrição',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(overView, style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: 40),
                  CustomBox(
                    width: double.infinity,
                    boxType: CustomBoxType.description,
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall!.copyWith(fontSize: 12),
                        text: 'ORÇAMENTO: ',
                        children: [
                          TextSpan(
                            text: '\$ 152,000,000',
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(color: ThemeColors.gray1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  CustomBox(
                    width: double.infinity,
                    boxType: CustomBoxType.description,
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall!.copyWith(fontSize: 12),
                        text: 'PRODUTORAS :',
                        children: [
                          TextSpan(
                            text: ' Marvel studios',
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(color: ThemeColors.gray1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Diretor',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text('Nomes', style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: 32),
                  Text('Elenco', style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
