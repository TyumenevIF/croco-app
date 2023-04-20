//
//  TeamAPI.swift
//  croco
//
//  Created by Ilyas Tyumenev on 19.04.2023.
//

import Foundation
import UIKit

class TeamAPI {
    
    static func getEmoji() -> String {
        let randomElememnt = (0x1F300...0x1F3F0).randomElement()!
        guard let scalar = UnicodeScalar(randomElememnt) else { return "❓" }
        return String(scalar)
    }
    
    static func getName() -> String {
        let names = [
            "Тигры", "Монстры", "Победители", "Зловещие", "Убийцы кроликов", "Мы-машина", "Непоколебимые",
            "Голодные звери", "Жаждущие крови", "Черная банда", "Безумные волки", "Дикие львы",
            "Монстры с клыками", "Древние зомби", "Машины-убийцы", "Мамонты", "Буйволы", "Беглые преступники",
            "Сверхзвуковые ракеты", "Трансформеры", "Каменьщики", "Бездушные", "Фантастическая четверка",
            "Черепашки Ниндзя", "Халк и его команда", "Дубовые", "Гном-Гномычи", "Гиганты", "Гуливеры",
            "Беспощадные", "Большие и страшные", "Бандиты", "Без компромиссов", "Кладовщики", "Гробовщики",
            "Летающие воины", "Витязи", "Киборги", "Команда Кусто", "Пираты", "Беспредельщики", "Злые",
            "Безумные змеи", "Серые львы", "Стрелочники", "Оружейная банда", "Танкисты", "Громкие",
            "Молниеносцы", "Неробкие", "Подводники"
        ]
        return names.randomElement() ?? "Команда"
    }
    
    static func getTeam() -> [Team]{
        let teams = [
            Team(name: getName(), emoji: getEmoji(), crossImage: nil),
            Team(name: getName(), emoji: getEmoji(), crossImage: nil)
        ]
        return teams
    }
}
