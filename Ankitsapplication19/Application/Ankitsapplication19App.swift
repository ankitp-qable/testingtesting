//
//  Ankitsapplication19App.swift
//  Ankitsapplication19

import SwiftUI

@main
struct Ankitsapplication19App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            AppnavigationView()
        }
    }
}
