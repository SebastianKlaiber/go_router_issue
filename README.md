# go_router_issue

adb shell 'am start -a android.intent.action.VIEW \
    -c android.intent.category.BROWSABLE \
    -d "http://example.com/details?email=test%2B23%40gmail.com"' \
    com.example.go_router_issue