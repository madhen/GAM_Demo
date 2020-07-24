//
//  GoogleAdBannerViewController.swift
//  IntgrateGAM
//
//  Created by Varun Mamindla on 7/24/20.
//

import UIKit
import GoogleMobileAds

protocol GoogleAdBannerViewViewing: AnyObject {
    func loadBanner(for unitId: String)
}

public final class GoogleAdBannerViewController: UIViewController {

    @IBOutlet private weak var bannerAdView: DFPBannerView!
    
    //var presenter: GoogleAdsBannerPresenting?
    public var isViewCollapsed: Bool = false
    public var viewsCollapsedStateChanged: ((Bool) -> Void)?
    public var paddingHeightConstraint: NSLayoutConstraint?
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setupBannerView()
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //presenter?.onViewWillAppear()
    }
    
    private func setupBannerView() {
        bannerAdView.rootViewController = self
    }
}

extension GoogleAdBannerViewController: GoogleAdBannerViewViewing {
    @objc func loadBanner(for unitId: String) {
        bannerAdView.adUnitID = "/6499/example/banner"
        bannerAdView.load(DFPRequest())
    }
}
