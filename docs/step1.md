# STEP01. 게임보드 만들기

> 2022.02.21

### 요구사항

- [x] 앱 기본 설정을 지정해서 StatusBar 스타일을 LightContent로 보이도록 한다.
- [x] ViewController 클래스에서 self.view 배경을 다음 이미지 패턴으로 지정한다. 이미지 파일은 Assets에 추가한다.
- [x] 다음 카드 뒷면 이미지를 다운로드해서 프로젝트 Assets.xcassets에 추가한다.
- [x] ViewController 클래스에서 코드로 7개 UIImageView를 생성하고, 추가해서 카드 뒷면을 보여준다
  - 주의사항 우선 스택뷰StackView를 사용하지 말고 직접 UIImageView를 7개 생성해야 한다
- [x] 화면 크기를 구하고 균등하게 7등분해서 이미지를 표시해야 한다
- [x] 카드 가로와 세로 비율은 1:1.27로 지정한다

<br/>
<br/>

### 과정

1. iOS App 프로젝트 생성
2. Asset에 이미지 추가
3. status bar 스타일 변경
4. ViewController 의 view에 패턴 이미지 적용
5. 카드 이미지 추가 함수 구현
6. 빌드 및 실행하여 확인

### 실행화면

![step1 result](https://user-images.githubusercontent.com/12508578/154943919-5c2c72d4-b1ca-485f-a45f-c56ca658c162.png)

<br/>

## 배경 지식 학습

### bounds vs frame

> ViewController 는 기본적으로 하나의 View 를 가지고 있으며,
> View 를 추가하면 하위에 View 가 위치한다.
> 이 계층구조가 View 의 좌표 시스템에 영향을 끼친다.

- bounds
  - 자신의 좌표 시스템안에서 view 의 location과 size
- frame
  - super view 좌표 시스템에서의 view 의 location과 size

<br/>

## 🧁 추가 학습거리

info.plist 의 Bundle name 에서 앱 아이콘에 나타나는 이름을 변결할 수 있다.

```bash
// Info.plist
Bundle name: $(PRODUCT_NAME)
```

- **Info.plist** 파일에서 정의된 `PRODUCT_NAME` 은 build settings 에 정의되어 있다.
- Project → Build Settings 에서도 Product Name 이 있으나 공란인 것을 확인할 수 있었다.

![2](https://user-images.githubusercontent.com/12508578/154943370-5de7c16f-0d3f-4d09-889e-35242bc6c31b.png)
![3](https://user-images.githubusercontent.com/12508578/154943390-6fb83982-9e0e-4de6-bb33-91fb3b00339a.png)

- Display Name:
  - **Targets→ General Tab→ Display Name** 을 변경하면 앱 표시이름을 변경할 수 있다.
  - `Display Name` 변경시, **Info.plist** 파일에 자동으로 `Bundle display name` 이 적용된다.
  - 기본 이름은 처음 프로젝트를 생성했을때 설정한 이름으로 정의되어 있다.
  - 여기서 설정한 이름은 다국어가 적용되지 않는다.
  - 다국어 설정을 위해서는 **InfoPlist.strings** 파일을 생성해 설정할 필요가 있다

![4](https://user-images.githubusercontent.com/12508578/154943406-7d26b0cc-2ce0-4b88-9892-88348c788af2.png)
![5](https://user-images.githubusercontent.com/12508578/154943416-58c631f1-038a-4091-86ed-483558f845b8.png)
