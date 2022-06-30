# Deep Learning Dictionary

Deep Learning Dictinoary는 인공지능 개발자가 딥러닝을 탐구하는 과정에서 잘 모르는 영어 용어가 나오더라도 단어장을 보며 쉽게 이해할 수 있도록 하기 위한 것이다. 딥러닝 관련 영단어를 모르는 단어를 개별로 찾을 필요 없이, 단어장을 보면서 쉽게 이해할 수 있도록 도와준다.



## 목록

1. [설치 방법](#getting-started)
2. [결과](#결과)
3. [코드 설명](#코드-설명)
4. [LICENSE](#LICENSE)
5. [외부리소스 정보](#외부-리소스-정보)

## Getting Started

파이썬 3.7 가상 환경 설정하기

```python
conda create -n deep_learning_dictionary python=3.7
conda activate deep_learning_dictionary
```

pip 설치하기

```python
pip install -r requirements.txt
```

개발 환경 설정을 위해 requirements.txt 파일을 설치한다.

사용 예제(완성 후 추가 예정)


## 결과


빈도수: 코드와 관련된 논문에 사용된 단어의 총 개수

section: SoTa 기준을 참고하여 단어를 분류했다.

(사진)

## 코드 설명



논문 url 수집

- first_collect_url(), collect_title_url(), get_pdf_url(): 논문 url 크롤링 함수
- make_classification(): 논문 분류 카테고리 생성 함수
- download_pdf(download_path): downlead_path에 pdf 자동 다운  함수 : **time.sleep(15초 이상)을 꼭 넣어야한다.**
  - arxiv는 자동화된 프로그래밍을 거부하기 때문에 잘못하면 arxiv에서 ip가 거부당할 수 있다. 그래서 sleep을 꼭 15초 이상은 넣거나 export.arxiv.org를 이용해야 한다. [arxiv-denied 내용 참고](https://export.arxiv.org/denied.html)

```python
first_collect_url()
make_classification()
collect_title_url()
get_pdf_url()
download_pdf(download_path)
```


다운 받은 pdf의 빈도수를 기준으로 단어 리스트 생성하는 함수

- pdf_to_txt(pdf_file): pdf 변환 함수
- pdf_to_txt_with_exception(pdf_file, download_path): pdf 변환 시 오류 제외
- word_token(txt_path): nltk로 단어 리스트 생성

```python
pdf_to_txt(pdf_file)
pdf_to_txt_with_exception(pdf_file, download_path)
word_token(txt_path)
```


단어 뜻 찾는 함수

- google_search(): 구글로 단어 뜻 검색하는 함수
- explain_translation(): 단어의 의미를 번역하는 함수(영→한)

```python
google_search()
explain_translation()
```

## LICENSE

MIT License
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)


## 외부 리소스 정보

arxiv 논문 관련 라이센스는 [arxiv의 라이센스](https://export.arxiv.org/help/license)를 따릅니다.
