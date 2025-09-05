import 'dart:io';

void main() {
  print('Hello World!');
  sleep(Duration(seconds: 1));
  loading(); 
}

void loading() {
  List<String> circle = ["|", "/", "-", "\\", "|", "/", "-", "\\", "|", "/"];
  List<String> loading = '[          ]'.split('');
  for(int i = 1; i < 11; i++) {
    print('${loading.join('')}${circle[i - 1]}${i * 10}%');
    loading[i] = '#';
    sleep(Duration(milliseconds: 500));
    print('\n' * 50);
  }
}
