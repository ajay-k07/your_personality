# your_personality

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### ======================================change the default questions============================================
This is a small Personality prediction app You can change the default question to your wish and the result statement 
steps to change the question
1.open lib folder 
2.open MyApp.dart file
3.In that there is a question variable 

final question1 = const [
{
      'questionText': 'Your question',
      'answers': [
        {'text': 'your answer', 'score': your points in Integer},
        {'text': 'your answer', 'score': your points in Integer},
        {'text': 'your answer', 'score': your points in Integer},
        {'text': 'your answer', 'score': your points in Integer},
       ],
    },
    {
      'questionText': 'Your question',
      'answers': [
        {'text': 'your answer', 'score': your points in Integer},
        {'text': 'your answer', 'score': your points in Integer},
        {'text': 'your answer', 'score': your points in Integer},
     ],
    },
    {
      'questionText': 'Your question',
      'answers': [
        {'text': 'your answer', 'score': your points in Integer},
        {'text': 'your answer', 'score': your points in Integer},
        {'text': 'your answer', 'score':your points in Integer},
        {'text': 'your answer', 'score': your points in Integer},
      ],
    },
  ];
 ============================================= CHANGE THE RESULT ===================================================
 1.open lib folder
 2.open result.dart file
 change the result to your wish
 String get text{
     if(totalscore<your desired value(eg 16)) {
       return 'your result text';
     }else if(totalscoreyour <desired value(eg 16)){
       return 'your result text';
     }else{
       return 'your result text';
     }
   }