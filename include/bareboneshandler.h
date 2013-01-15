#ifndef BAREBONESHANDLER_H_
#define BAREBONESHANDLER_H_

#include "include/cef_client.h"

class BareBonesHandler : public CefClient {

public:
  BareBonesHandler() { }
  ~BareBonesHandler() { }

  IMPLEMENT_REFCOUNTING(BareBonesHandler);
};

#endif
