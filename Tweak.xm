#import <config.h>
#import <wtf/RefPtr.h>

class CppClass {
    public:
        bool flag;
        bool isTrue() {
            ASSERT(flag);
            return true;
        }
};

bool func() {
    CppClass *cpp =  new CppClass;
    return cpp->isTrue();
}
