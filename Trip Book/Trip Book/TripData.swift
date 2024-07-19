//
//  TripData.swift
//  Trip Book
//
//  Created by Yagmur on 19.07.2024.
//

import UIKit

struct TripData
{
    let title : String
    let image : UIImage?
    let article: String
}

func create() -> [TripData]
{
    var data: [TripData] = []
    data = [
        TripData(title: "Paris, Fransa", image: UIImage(named: "paris"), article: "Paris, Fransa'nın başkenti ve en büyük şehridir. Eyfel Kulesi ve Louvre Müzesi gibi ikonik yapılarıyla ünlüdür."),
                TripData(title: "New York, ABD", image: UIImage(named: "newyork"), article: "New York, ABD'nin en kalabalık şehri ve finans merkezidir. Özgürlük Heykeli ve Times Square ile tanınır."),
                TripData(title: "Tokyo, Japonya", image: UIImage(named: "tokyo"), article: "Tokyo, Japonya'nın başkenti ve dünyanın en kalabalık metropol alanlarından biridir. Geleneksel tapınakları ve modern gökdelenleri ile ünlüdür."),
                TripData(title: "Londra, İngiltere", image: UIImage(named: "london"), article: "Londra, İngiltere'nin başkenti olup, tarihî yapıları ve kültürel merkezleri ile tanınır. Buckingham Sarayı ve Big Ben gibi simgeleri vardır."),
                TripData(title: "Roma, İtalya", image: UIImage(named: "roma"), article: "Roma, İtalya'nın başkenti ve antik Roma'nın kalbidir. Kolezyum ve Vatikan Şehri ile ünlüdür."),
                TripData(title: "Sydney, Avustralya", image: UIImage(named: "sydney"), article: "Sydney, Avustralya'nın en büyük şehri olup, Sydney Opera Binası ve Bondi Plajı ile tanınır."),
                TripData(title: "Istanbul, Türkiye", image: UIImage(named: "istanbul"), article: "İstanbul, Türkiye'nin en büyük şehri olup, hem Avrupa hem de Asya kıtalarında yer alır. Ayasofya ve Sultanahmet Camii ile ünlüdür."),
                TripData(title: "Kahire, Mısır", image: UIImage(named: "kahire"), article: "Kahire, Mısır'ın başkenti ve Afrika'nın en büyük şehirlerinden biridir. Büyük Piramitler ve Mısır Müzesi ile tanınır."),
                TripData(title: "Rio de Janeiro, Brezilya", image: UIImage(named: "rio"), article: "Rio de Janeiro, Brezilya'nın en büyük şehirlerinden biridir. Christ the Redeemer heykeli ve Copacabana Plajı ile ünlüdür."),
                TripData(title: "Meksiko City, Meksika", image: UIImage(named: "meksika"), article: "Meksiko City, Meksika'nın başkenti olup, tarihî kalıntıları ve kültürel zenginlikleri ile tanınır. Aztek Kalıntıları ve Chapultepec Parkı ile ünlüdür.")
          ]
    
    
    return data
}

