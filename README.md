# 구글 콘솔에 앱을 등록한다.
https://firebase.google.com/?platform=android

#

# iOS 결합
1. GoogleServices-Info.plist를 다운받는다.
2. GoogleServices-Info.plist 파일을 "project이름"/ios/Runner/ 에 넣는다.
3. target을 설정하라는 Dialog가 뜨면 Runner로 지정한다.
4. "project이름"/ios/Runner/Info.plist 에 다음 소스를 복사해 넣는다.

#

~~~
<!-- Put me in the [my_project]/ios/Runner/Info.plist file -->
<!-- Google Sign-in Section -->
<key>CFBundleURLTypes</key>
<array>
	<dict>
		<key>CFBundleTypeRole</key>
		<string>Editor</string>
		<key>CFBundleURLSchemes</key>
		<array>
			<!-- TODO Replace this value: -->
			<!-- Copied from GoogleServices-Info.plist key REVERSED_CLIENT_ID -->
			<string>com.googleusercontent.apps.861823949799-vc35cprkp249096uujjn0vvnmcvjppkn</string>
		</array>
	</dict>
</array>
<!-- End of the Google Sign-in Section -->
~~~

#

