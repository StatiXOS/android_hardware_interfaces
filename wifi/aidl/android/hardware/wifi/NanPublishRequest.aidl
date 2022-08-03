/*
 * Copyright (C) 2022 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.hardware.wifi;

import android.hardware.wifi.NanDiscoveryCommonConfig;
import android.hardware.wifi.NanPublishType;
import android.hardware.wifi.NanTxType;

/**
 * Publish request. Specifies a publish discovery operation.
 */
@VintfStability
parcelable NanPublishRequest {
    /**
     * Common configuration of discovery sessions.
     */
    NanDiscoveryCommonConfig baseConfigs;
    /**
     * Type of the publish discovery session.
     */
    NanPublishType publishType;
    /**
     * For publishType of |NanPublishType.SOLICITED| or |NanPublishType.UNSOLICITED_SOLICITED|,
     * this specifies the type of transmission used for responding to the probing subscribe
     * discovery peer.
     */
    NanTxType txType;
    /**
     * Specifies whether data-path requests |IWifiNanIfaceEventCallback.eventDataPathRequest| (in
     * the context of this discovery session) are automatically accepted (if true) - in which case
     * the Responder must not call the |IWifiNanIface.respondToDataPathIndicationRequest| method and
     * the device must automatically accept the data-path request and complete the negotiation.
     */
    boolean autoAcceptDataPathRequests;
}