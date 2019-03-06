//
//  ViewController.swift
//  tespoligon
//
//  Created by Zaur Giyasov on 05/03/2019.
//  Copyright © 2019 Zaur Giyasov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    /*
     Амазон
     {
     "camera": "http://172.17.0.1/camera/2/",
     "alert": "http://172.17.0.1/alert_type/2/",
     "start": "2018-06-09T11:39:39Z",
     "end": "2018-06-09T11:40:09Z",
     "original_link": "https://s3.eu-central-1.amazonaws.com/athenacameras/video.mp4",
     "upload_link": "http://172.17.0.1/upload/2/",
     "url": "http://172.17.0.1/alert/2/",
     "thumbnail_link": "https://s3.eu-central-1.amazonaws.com/athenacameras/thumbnail.jpg",
     "converted_links": null,
     "type": "gun",
     "camera_data": {
     "hq_stream_url": "rtsp://admin:admin@192.168.1.74/1/h264major",
     "lq_stream_url": "rtsp://admin:admin@192.168.1.74/2/h264minor",
     "box": "http://172.17.0.1/box/2/",
     "name": "MyJiCLfAKrtSi...jIGqSrFGcnFvbDaUf",
     "url": "http://172.17.0.1/camera/2/",
     "thumbnail_link": "https://s3.eu-central-1.amazonaws.com/athenacameras/camera_thumbnail.jpg",
     "active": true,
     "stream_play_link": "rtsp://admin:admin@172.17.0.1:5002/2/h264minor",
     "emergency_phone_number": null,
     "image_link": "https://s3.eu-central-1.amazonaws.com/athenacameras/camera_image.jpg",
     "box_relative": "/box/2/",
     "url_relative": "/camera/2/",
     "thumbnail_link_relative": null,
     "image_link_relative": null
     },
     "camera_relative": "/camera/2/",
     "alert_relative": "/alert_type/2/",
     "original_link_relative": null,
     "upload_link_relative": "/upload/2/",
     "url_relative": "/alert/2/",
     "thumbnail_link_relative": null
     }
     
     Локальные урлы
     {
     "camera": "http://172.17.0.1/camera/3/",
     "alert": "http://172.17.0.1/alert_type/3/",
     "start": "2018-06-09T11:39:39Z",
     "end": "2018-06-09T11:40:09Z",
     "original_link": "http://192.168.1.74/video.mp4",
     "upload_link": "http://172.17.0.1/upload/3/",
     "url": "http://172.17.0.1/alert/3/",
     "thumbnail_link": "http://192.168.1.74/thumbnail.jpg",
     "converted_links": null,
     "type": "gun",
     "camera_data": {
     "hq_stream_url": "rtsp://admin:admin@192.168.1.74/1/h264major",
     "lq_stream_url": "rtsp://admin:admin@192.168.1.74/2/h264minor",
     "box": "http://172.17.0.1/box/3/",
     "name": "MyJiCLfAKrtSi...jIGqSrFGcnFvbDaUf",
     "url": "http://172.17.0.1/camera/3/",
     "thumbnail_link": "http://192.168.1.74/camera_thumbnail.jpg",
     "active": true,
     "stream_play_link": "rtsp://admin:admin@172.17.0.1:5003/2/h264minor",
     "emergency_phone_number": null,
     "image_link": "http://192.168.1.74/camera_image.jpg",
     "box_relative": "/box/3/",
     "url_relative": "/camera/3/",
     "thumbnail_link_relative": "/camera_thumbnail.jpg",
     "image_link_relative": "/camera_image.jpg"
     },
     "camera_relative": "/camera/3/",
     "alert_relative": "/alert_type/3/",
     "original_link_relative": "/video.mp4",
     "upload_link_relative": "/upload/3/",
     "url_relative": "/alert/3/",
     "thumbnail_link_relative": "/thumbnail.jpg"
     }
     */
    
    func createAmazonAlert() -> [AnyHashable: Any] {
        let obj = [
            "camera": "http://172.17.0.1/camera/2/",
            "alert": "http://172.17.0.1/alert_type/2/",
            "start": "2018-06-09T11:39:39Z",
            "end": "2018-06-09T11:40:09Z",
            "original_link": "https://s3.eu-central-1.amazonaws.com/athenacameras/video.mp4",
            "upload_link": "http://172.17.0.1/upload/2/",
            "url": "http://172.17.0.1/alert/2/",
            "thumbnail_link": "https://s3.eu-central-1.amazonaws.com/athenacameras/thumbnail.jpg",
            "converted_links": CFNull.self,
            "type": "gun",
            "camera_data": [
                "hq_stream_url": "rtsp://admin:admin@192.168.1.74/1/h264major",
                "lq_stream_url": "rtsp://admin:admin@192.168.1.74/2/h264minor",
                "box": "http://172.17.0.1/box/2/",
                "name": "MyJiCLfAKrtSi...jIGqSrFGcnFvbDaUf",
                "url": "http://172.17.0.1/camera/2/",
                "thumbnail_link": "https://s3.eu-central-1.amazonaws.com/athenacameras/camera_thumbnail.jpg",
                "active": true,
                "stream_play_link": "rtsp://admin:admin@172.17.0.1:5002/2/h264minor",
                "emergency_phone_number": CFNull.self,
                "image_link": "https://s3.eu-central-1.amazonaws.com/athenacameras/camera_image.jpg",
                "box_relative": "/box/2/",
                "url_relative": "/camera/2/",
                "thumbnail_link_relative": CFNull.self,
                "image_link_relative": CFNull.self
            ],
            "camera_relative": "/camera/2/",
            "alert_relative": "/alert_type/2/",
            "original_link_relative": CFNull.self,
            "upload_link_relative": "/upload/2/",
            "url_relative": "/alert/2/",
            "thumbnail_link_relative": CFNull.self
            ] as [AnyHashable : Any]
        
        return obj
    }
    
    func createLocalAlert() -> [AnyHashable: Any] {
        let obj = [
            "camera": "http://172.17.0.1/camera/3/",
            "alert": "http://172.17.0.1/alert_type/3/",
            "start": "2018-06-09T11:39:39Z",
            "end": "2018-06-09T11:40:09Z",
            "original_link": "http://192.168.1.74/video.mp4",
            "upload_link": "http://172.17.0.1/upload/3/",
            "url": "http://172.17.0.1/alert/3/",
            "thumbnail_link": "http://192.168.1.74/thumbnail.jpg",
            "converted_links": CFNull.self,
            "type": "gun",
            "camera_data": [
                "hq_stream_url": "rtsp://admin:admin@192.168.1.74/1/h264major",
                "lq_stream_url": "rtsp://admin:admin@192.168.1.74/2/h264minor",
                "box": "http://172.17.0.1/box/3/",
                "name": "MyJiCLfAKrtSi...jIGqSrFGcnFvbDaUf",
                "url": "http://172.17.0.1/camera/3/",
                "thumbnail_link": "http://192.168.1.74/camera_thumbnail.jpg",
                "active": true,
                "stream_play_link": "rtsp://admin:admin@172.17.0.1:5003/2/h264minor",
                "emergency_phone_number": CFNull.self,
                "image_link": "http://192.168.1.74/camera_image.jpg",
                "box_relative": "/box/3/",
                "url_relative": "/camera/3/",
                "thumbnail_link_relative": "/camera_thumbnail.jpg",
                "image_link_relative": "/camera_image.jpg"
            ],
            "camera_relative": "/camera/3/",
            "alert_relative": "/alert_type/3/",
            "original_link_relative": "/video.mp4",
            "upload_link_relative": "/upload/3/",
            "url_relative": "/alert/3/",
            "thumbnail_link_relative": "/thumbnail.jpg"
            ] as [AnyHashable : Any]
        
        return obj
    }
    
    func change(obj: [AnyHashable : Any]) -> [AnyHashable : Any] {
        //
        return ["key": "value"]
    }
    
    static let relativeKeys = [
        "camera_relative",
        "alert_relative",
        "original_link_relative",
        "upload_link_relative",
        "url_relative",
        "thumbnail_link_relative"
    ]
    
    static let cameraDataRelativeKeys = [
        "box_relative",           // "/box/2/",
        "url_relative",           // "/camera/2/",
        "thumbnail_link_relative",// ?
        "image_link_relative"     // ?
    ]
    
    fileprivate func alertKeysChanger(_ data: inout [String : Any]) {
        
        /* "camera_relative", "alert_relative", "original_link_relative", "upload_link_relative", "url_relative", "thumbnail_link_relative" */
        
        for key in data.keys {
            if key == "original_link" {
                // check origin value
                if data[key] == nil {
                    if let value = data["original_link_relative"] {
                        data[key] = value
                    }
                }
            }
            
            if key == "thumbnail_link" {
                // check origin value
                if data[key] == nil {
                    if let value = data["thumbnail_link_relative"] {
                        data[key] = value
                    }
                }
            }
            
            if key == "camera" {
                if let value = data["camera_relative"] {
                    data[key] = value
                }
            }
            
            if key == "alert" {
                if let value = data["alert_relative"] {
                    data[key] = value
                }
            }
            
            if key == "upload_link" {
                if let value = data["upload_link_relative"] {
                    data[key] = value
                }
            }
            
            if key == "url" {
                if let value = data["url_relative"] {
                    data[key] = value
                }
            }
        }
    }
    
    fileprivate func cameraKeysChanger(_ data: inout [String : Any]) {
        
        /* "box_relative", "url_relative", "thumbnail_link_relative", "image_link_relative" */
        
        for key in data.keys {
            if key == "image_link" {
                // check origin value
                if data[key] == nil {
                    if let value = data["image_link_relative"] {
                        data[key] = value
                    }
                }
            }
            
            if key == "thumbnail_link" {
                // check origin value
                if data[key] == nil {
                    if let value = data["thumbnail_link_relative"] {
                        data[key] = value
                    }
                }
            }
            
            if key == "box" {
                if let value = data["box_relative"] {
                    data[key] = value
                }
            }
            
            if key == "url" {
                if let value = data["url_relative"] {
                    data[key] = value
                }
            }
        }
    }
    
    private func dictionaryWithFixedLinks(_ dictionary: [AnyHashable: Any]) -> [AnyHashable: Any] {
        let basicUrl = "http://someadress.com"
        guard let url = URLComponents(string: basicUrl),
            var data = dictionary as? [String: Any] else {
                return dictionary
        }
        
        data.replace(scheme: url.scheme, host: url.host, forKeys: type(of: self).relativeKeys)
        alertKeysChanger(&data)

        if var cameraData = data["camera_data"] as? [String: Any] {
            // cameraKeysChanger(&cameraData)
            cameraData.replace(scheme: url.scheme, host: url.host, forKeys: type(of: self).cameraDataRelativeKeys)
            cameraKeysChanger(&cameraData)
            // cameraData.replace(scheme: url.scheme, host: url.host, forKeys: type(of: self).cameraDataOriginKeys)
            data["camera_data"] = cameraData
        }
        
        return data
    }
    
    
    @IBAction func tapMeButton(_ sender: UIButton) {
        print("\n** \(NSStringFromClass(type(of: self).self)): \(NSStringFromSelector(#function)). \(sender.debugDescription)\n")
        let localAlert = createLocalAlert()
        let amazonAlert = createAmazonAlert()
        print("incomingLocalAlert : \(localAlert.debugDescription)\n")
        print("incomingAmazonAlert : \(amazonAlert.debugDescription)\n")
        
        let preparedLocalAlertDictionary = dictionaryWithFixedLinks(localAlert as [AnyHashable : Any])
        let preparedAmazonAlertDictionary = dictionaryWithFixedLinks(amazonAlert as [AnyHashable : Any])
        
        print("outcomingLocalAlert : \(preparedLocalAlertDictionary.debugDescription)")
        print("outcomingAmazonAlert : \(preparedAmazonAlertDictionary.debugDescription)")

    }
}

private extension Dictionary where Key == String, Value == Any {
    
    mutating func replace(scheme: String? = nil, host: String? = nil, forKeys keys: [String]) {
        keys.forEach { key in
            guard let link = self[key] as? String,
                var url = URLComponents(string: link) else {
                    return
            }
            if let scheme = scheme {
                url.scheme = scheme
            }
            if let host = host {
                url.host = host
            }
            guard let result = url.string else { return }
            self[key] = result
        }
    }
}

