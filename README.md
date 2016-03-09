# ios-go-example (Work in progress...)     
Example iOS app that used Go mobile

### Prerequisites
You should have valid credentials to use HERE REST API. If you don't have it register on https://developer.here.com/

### Setup
1. Clone this repo  
2. Build https://github.com/artemnikitin/android-go-shared with command `gomobile bind -target=ios` and copy resulting **Hereapi.framework** to this repo
3. Open project with Xcode and add **Hereapi.framework** from **Files** -> **Add files to** to the project
