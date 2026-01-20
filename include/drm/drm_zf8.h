/*
 * Copyright (c) 2020, ASUS. All rights reserved.
 */

#ifndef _DRM_ZF8_H_
#define _DRM_ZF8_H_

#define ASUS_NOTIFY_GHBM_ON_REQ        0
#define ASUS_NOTIFY_GHBM_ON_READY      1
#define ASUS_NOTIFY_SPOT_READY         2
#define ASUS_NOTIFY_FOD_TOUCHED        3

void zf8_drm_notify(int var, int value);
void drm_zf8_sysfs_destroy(void);
int drm_zf8_sysfs_init(void);
bool is_ZF8_DSI_mode(int vdisplay, int vtotal);
bool zf8_refreshrate_match(int refresh1, int refresh2);

#endif /* _DRM_ANAKIN_H_ */
