import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Container(
          padding: const EdgeInsets.all(15),
          child: Image.asset(
            'assets/images/arrow.png',
          ),
        ),
        title: Column(
          children: const [
            Text(
              'Москва в кино',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xffFFFFFF),
              ),
            ),
            Text(
              'Москва Марины Цветаевой',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.white60),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.close,
            size: 30,
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 11,
                child: Container(
                  height: 4,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  height: 4,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: 17,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 17,
                                  width: 17,
                                  child:
                                      Image.asset('assets/images/question.png'),
                                ),
                                const Spacer(
                                  flex: 2,
                                ),
                                const Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                                const Text(
                                  '/10',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black45),
                                ),
                                const Spacer(flex: 100)
                              ],
                            ),
                            Container(height: 19),
                            Image.asset('assets/images/image1.png'),
                            Container(height: 10),
                            Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    'С момента выхода на экраны советских кинотеатров фильма «Служебный роман» прошло уже более 40 лет. Картина моментально завоевала сердца публики и стала одной из самых любимых отечественных комедий.',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54),
                                  ),
                                ),
                              ],
                            ),
                            Container(height: 15),
                            Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    'В Москве на улице Пятницкой находится павильон метро, размещенный на месте снесенной церкви. Напишите название церкви. Подсказкой станет стена-граффити дома, стоящего прямо у выхода метро «Новокузнецкая».',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Container(height: 31),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 15),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(22),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 6,
                                    ),
                                  ),
                                ),
                                const Text('Наш директор')
                              ],
                            ),
                            Container(height: 30),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 15),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(22),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 6,
                                    ),
                                  ),
                                ),
                                const Text('Наша мымра')
                              ],
                            ),
                            Container(height: 30),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 15),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(22),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 6,
                                    ),
                                  ),
                                ),
                                const Text('Мужчина в юбке')
                              ],
                            ),
                            Container(height: 30),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  color: const Color(0xffFF5D54),
                  child: const Text(
                    'Ответить',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: const Color(0xffF6F6FB),
                  child: Row(
                    children: [
                      const Spacer(
                        flex: 3
                      ),
                      const Text(
                        'Далее',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(flex: 1),
                      SizedBox(
                        height: 9,
                        width: 14,
                        child: Image.asset('assets/images/arrow2.png'),
                      ),
                      const Spacer(flex: 4)
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
