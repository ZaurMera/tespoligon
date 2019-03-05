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
    
    struct PushIncomongStruct: Codable {
        var camera  : String
        var alert   : String
        var start   : String
        var end     : String
        var original_link   : String?
        var upload_link     : String?
        var url     : String
        var thumbnail_link  : String?
        var converted_links : String?
        var type    : String
        var camera_data     : CameraData
        var camera_relative : String?
        var alert_relative  : String?
        var original_link_relative  : String?
        var upload_link_relative    : String?
        var url_relative    : String?
        var thumbnail_link_relative : String?
        
        init(camera : String, alert : String, start : String, end : String, original_link : String, upload_link : String, url : String, thumbnail_link  : String, converted_links : String, type : String, camera_data : CameraData, camera_relative : String, alert_relative : String, original_link_relative : String, upload_link_relative : String, url_relative : String, thumbnail_link_relative : String) {
            
            self.camera = camera
            self.alert = alert
            self.start = start
            self.end = end
            self.original_link = original_link
            self.upload_link = upload_link
            self.url = url
            self.thumbnail_link = thumbnail_link
            self.converted_links = converted_links
            self.type = type
            self.camera_data = camera_data
            self.camera_relative = camera_relative
            self.alert_relative = alert_relative
            self.original_link_relative = original_link_relative
            self.upload_link_relative = upload_link_relative
            self.url_relative = url_relative
            self.thumbnail_link_relative = thumbnail_link_relative
        }
    }
    
    struct CameraData: Codable {
        var hq_stream_url : String?
        var lq_stream_url : String?
        var box : String?
        var name : String?
        var url : String // strong
        var thumbnail_link : String?
        var active : Bool?
        var stream_play_link : String?
        var emergency_phone_number : Int?
        var image_link : String?
        var box_relative : String?
        var url_relative : String?
        var thumbnail_link_relative : String?
        var image_link_relative : String?
        
        init(hq_stream_url : String, lq_stream_url : String, box : String, name : String, url : String, thumbnail_link : String, active : Bool, stream_play_link : String, emergency_phone_number : Int, image_link : String, box_relative : String, url_relative : String, thumbnail_link_relative : String, image_link_relative : String) {
            self.hq_stream_url = hq_stream_url
            self.lq_stream_url = lq_stream_url
            self.box = box
            self.name = name
            self.url = url
            self.thumbnail_link = thumbnail_link
            self.active = active
            self.stream_play_link = stream_play_link
            self.emergency_phone_number = emergency_phone_number
            self.image_link = image_link
            self.box_relative = box_relative
            self.url_relative = url_relative
            self.thumbnail_link_relative = thumbnail_link_relative
            self.image_link_relative = image_link_relative
        }
    }
    
    func createCameraData() -> CameraData {
        let dataObj = CameraData(
            hq_stream_url: "rtsp://admin:admin@192.168.1.74/1/h264major",
            lq_stream_url: "rtsp://admin:admin@192.168.1.74/2/h264minor",
            box: "http://172.17.0.1/box/3/",
            name: "MyJiCLfAKrtSi...jIGqSrFGcnFvbDaUf",
            url: "http://172.17.0.1/camera/3/",
            thumbnail_link: "http://192.168.1.74/camera_thumbnail.jpg",
            active: true,
            stream_play_link: "rtsp://admin:admin@172.17.0.1:5003/2/h264minor",
            emergency_phone_number: 123456789,
            image_link: "http://192.168.1.74/camera_image.jpg",
            box_relative: "/box/3/",
            url_relative: "/camera/3/",
            thumbnail_link_relative: "/camera_thumbnail.jpg",
            image_link_relative: "/camera_image.jpg")
        
        return dataObj
    }

    func createPushIncomongStruct() -> PushIncomongStruct {
        let dataObj = PushIncomongStruct(
            camera: "http://172.17.0.1/camera/3/",
            alert: "http://172.17.0.1/alert_type/3/",
            start: "2018-06-09T11:39:39Z",
            end: "2018-06-09T11:40:09Z",
            original_link: "http://192.168.1.74/video.mp4",
            upload_link: "http://172.17.0.1/upload/3/",
            url: "http://172.17.0.1/alert/3/",
            thumbnail_link: "http://192.168.1.74/thumbnail.jpg",
            converted_links: "http://192.168.1.74/nnm.jpg",
            type: "gun",
            camera_data: createCameraData(),
            camera_relative: "/camera/3/",
            alert_relative: "/alert_type/3/",
            original_link_relative: "/video.mp4",
            upload_link_relative: "/upload/3/",
            url_relative: "/alert/3/",
            thumbnail_link_relative: "/thumbnail.jpg")
        
        return dataObj
    }
    
    func createAlert(incoming: PushIncomongStruct) -> PushIncomongStruct {
        let modifyStruct = createPushIncomongStruct()
        
        
        return modifyStruct
    }

    var incomingPush: PushIncomongStruct?
    
    @IBAction func tapMeButton(_ sender: UIButton) {
        print("\n** \(NSStringFromClass(type(of: self).self)): \(NSStringFromSelector(#function)). \(sender.debugDescription)\n")
        incomingPush = createPushIncomongStruct()
        if let push = incomingPush {
            print("incomingPush : \(push)")
        }
        
    }
    


}

