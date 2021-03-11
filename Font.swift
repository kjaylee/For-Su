//
//  UIFont+FS.swift
//  for su
//
//  Created by Jay Lee on 2021/03/11.
//

import UIKit
/**
 ## ENUM 설명
 * Font
 * 커스텀 폰트 "Binggrae", "Binggrae-Bold"
 http://bingfont.co.kr/license.html
 --------------------------------------------
 빙그레 서체 라이선스
 빙그레 서체(빙그레체, 빙그레체Ⅱ, 빙그레 따옴체, 빙그레 메로나체, 빙그레 싸만코체)의 지적 재산권은 빙그레(www.bing.co.kr)에 있습니다.
 빙그레 서체는 개인 및 기업 사용자를 포함한 모든 사용자에게 무료로 제공합니다.

 빙그레 서체는 인쇄물, 광고물, 온라인 등 상업적 목적으로 사용할 수 있습니다.

 단, 글꼴 자체를 유료로 판매하는 것은 금지하며
 빙그레 서체는 수정 및 재배포를 할 수 없으며, 배포되는 형태 그대로 사용해야 합니다.

 빙그레 서체를 사용한 인쇄물, 광고물(온라인 포함)의 이미지는 빙그레 프로모션을 위해 활용될 수 있습니다.

 이를 원치 않는 사용자는 언제든지 당사에 요청하실 수 있습니다.
 문의(www.bing.co.kr)
 --------------------------------------------
 
 ## 기본정보
 * Note: APP
 * See: <# 제플린 없음 #>
 * Author: Jay Lee
 */
enum Font: String {
    case Regular = "Binggrae"
    case Bold = "Binggrae-Bold"
    func of(size: CGFloat) -> UIFont {
        guard let font = UIFont(name: self.rawValue, size: size) else {
            return UIFont.systemFont(ofSize: size)
        }
        return font
    }
    func of(style: UIFont.TextStyle) -> UIFont {
        let preferred = UIFont.preferredFont(forTextStyle: style).pointSize
        return self.of(size: preferred)
    }
}
