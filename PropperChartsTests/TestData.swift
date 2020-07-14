//
//  TestData.swift
//  PropperChartsTests
//
//  Created by Roman Baitaliuk on 14/07/20.
//  Copyright © 2020 Roman Baitaliuk. All rights reserved.
//

import Foundation
@testable import PropperCharts

struct TestData {
    
    static func generate(with values: [Double]) -> [ChartDataEntry] {
        var entries = [ChartDataEntry]()
        for (index, value) in values.enumerated() {
            let newEntry = ChartDataEntry(x: "\(index)", y: value)
            entries.append(newEntry)
        }
        return entries
    }

    struct Values {
        struct Positive {
            struct Small {
                static let values1: [Double] = [0.23875672295222253]
                static let values2: [Double] = [0.2684136185901309, 0.16131669522994863]
                static let values3: [Double] = [0.2639830126014629, 0.15974664769619834, 0.22752326268788364, 0.13911307358474653, 0.28026824376151305]
                static let values4: [Double] = [0.19727250308928962, 0.2308106471922598, 0.13256217023006187, 0.1367648372664736, 0.15714402753315498, 0.22588350803628962, 0.2644809090012066]
                static let values5: [Double] = [0.5466323238920077, 0.5156455479675484, 0.13291550274624686, 0.7771603858442256, 0.9025048107614076, 0.40737263782697297, 0.6655120656097606, 0.647796170763738, 0.3207767946207413, 0.2868540478265839, 0.2620104724701646, 0.8367088377208742, 0.21919262237132098, 0.1722920524489231, 0.15922626432748044, 0.4891199176880685, 0.23470257555145846, 0.8706489523436453, 0.8311258151046474, 0.5778233129883721, 0.8526875093676144]
            }
            
            struct Mid {
                static let values1: [Double] = [98.40067879858509]
                static let values2: [Double] = [55.052756589112676, 69.48356595339442]
                static let values3: [Double] = [40.57943586235161, 54.6206979706237, 43.43520250456608, 31.636360365610194, 42.312501067159566, 59.874004415953074]
                static let values4: [Double] = [46.23376707364597, 78.1047124748174, 96.76482212585093, 10.875552416027393, 4.145508110947263, 19.89589074913821, 57.87656976286651, 51.427645821760045]
                static let values5: [Double] = [49.172347022669214, 62.638089607406826, 39.332530499289774, 98.51617133533895, 89.76300260279845, 53.48150921316537, 50.61944810303782, 86.73384074151308, 6.481826092252144, 39.76813483486283, 42.43219019704493, 95.85471451668741, 6.639584266033531, 82.20578895864162, 57.20033695917166, 19.549376342682226, 9.526520334855517, 15.954728800028686]
            }
            
            struct Large {
                static let values1: [Double] = [933.608090793989]
                static let values2: [Double] = [260.29939965518247, 461.8232573168553]
                static let values3: [Double] = [212.20237931356752, 134.26672344492164, 170.78818158912125, 726.9360462508057, 433.4176900479346, 853.6549857725398]
                static let values4: [Double] = [172.6209415482361, 619.3983725348953, 613.0122947735748, 411.4339313375111, 959.4363998296446, 613.204165830946, 499.49495683521883, 591.6883034445457, 288.30229436515344, 722.2358023940463]
                static let values5: [Double] = [485.1778745682676, 372.1598793295034, 937.5620722111946, 667.034524273335, 645.3795123800068, 151.02751655585465, 801.0126816467382, 709.3331910204965, 950.5785950961556, 614.2357925588653, 848.0686234611463, 172.26868259108699, 990.3253385258535, 177.4444336874585, 677.0505570069992, 860.3715740108657, 584.0133371945478, 830.5029774825001, 103.07842008613726, 411.27737210941496, 803.2825484502141]
            }
        }
        
        struct Negative {
            struct Small {
                static let values1: [Double] = [-0.2362110700260261]
                static let values2: [Double] = [-0.11719829568796988, -0.1995677967246154]
                static let values3: [Double] = [-0.2882649374950868, -0.1328421271991442, -0.26172464939834195, -0.25592332283759134, -0.2887961694356732, -0.25240426028516927]
                static let values4: [Double] = [-0.2523331512221314, -0.18935587960194128, -0.1507128289270137, -0.2473339367312253, -0.11248666006869831, -0.1135295222658772, -0.14617562966908498]
                static let values5: [Double] = [-0.14539804216132646, -0.29087341537264905, -0.2791428956717379, -0.12177629522748437, -0.21288959751910208, -0.26150650039906886, -0.16288768820222366, -0.26280536120587306, -0.11326897716694947, -0.17391125484591427, -0.10603393446904713, -0.17493115249989497, -0.1022184734124871, -0.1483562776481696, -0.16983033913139306, -0.18051178923391525, -0.28008667534171316, -0.11474472761680429, -0.12902809125618483, -0.16910750985712852, -0.200144420741012]
            }
            
            struct Mid {
                static let values1: [Double] = [-14.317389855452234]
                static let values2: [Double] = [-40.44939166476918, -5.267268367336996]
                static let values3: [Double] = [-25.948740362913725, -25.864675726579208, -20.201968323409645, -4.5575961274022205, -43.374370609825185, -48.50547096385824, -73.3148551940273]
                static let values4: [Double] = [-23.32930085055102, -44.81745644382531, -58.26116506455848, -21.868106648509922, -77.66153242628351, -61.74060343537626, -95.28112276855798, -20.72286052859303, -36.07821463080642, -9.036730358526029, -21.34876740902675]
                static let values5: [Double] = [-29.377128218151938, -43.583959440724, -60.57144998506984, -27.912392970038724, -67.66153493841162, -70.30545485895426, -46.609860516676626, -80.6715155854962, -21.121938873732148, -3.267065074012308, -52.523454355897, -15.809916074446946, -88.4664530162171, -53.46209175820739, -98.24645012760485, -40.621009321511025, -75.7607035928469, -38.65992086484787, -25.06331734152529, -78.77873313645318, -2.9205965090560397]
            }
            
            struct Large {
                static let values1: [Double] = [-239.74265265469944]
                static let values2: [Double] = [-193.61155473573785, -368.1931642646799]
                static let values3: [Double] = [-263.8260844385155, -379.47607946315, -182.0835402863488, -929.4225571744635, -135.37498938480132, -209.39533249920567]
                static let values4: [Double] = [-482.9912080921938, -543.0718270711238, -841.6834886284742, -734.3505573873854, -473.230466741987, -125.96731083377028, -950.3737016579273, -570.0150207483283, -402.2457519917757, -852.9327226621378, -866.820088496364, -749.8733270188756, -725.0817569634371, -964.5704647521372, -350.6768794744197, -693.8371332429392, -887.906685288875]
                static let values5: [Double] = [-682.298899071088, -289.8263516807647, -818.3603392841937, -156.83179737381136, -473.12448740337095, -204.6093884182285, -146.3741735870775, -771.3164241007768, -309.95411564741835, -532.0014464500366, -127.9993431009284, -223.90190879367856, -121.77408461442997, -479.21421264087246, -553.9472924202291, -980.8133668245063, -328.23929968378593, -367.45499321001125, -960.5696614584499, -697.1179671816379, -333.80047277900246]
            }
        }
        
        struct PositiveAndNegative {
            struct Small {
                static let values1: [Double] = [-0.1335971968625974, 0.15042626326352287]
                static let values2: [Double] = [-0.19179890231919727, -0.19824635093222207, -0.05614434058402015, 0.16531352492670082, -0.10222339146220016, -0.17616552491728152]
                static let values3: [Double] = [0.057043207052957345, -0.17266114786523465, -0.09896188581597838, 0.1634180468399561, 0.1535860219929393, -0.06401882651635035, -0.08171773896238582, -0.12653024551489617, -0.12004760971991035, 0.10813657584652997, 0.14047068164695253, 0.17068410990347432]
                static let values4: [Double] = [0.12667162089982958, 0.17602664191040757, -0.10828495319777849, 0.07979324073295657, 0.13153427513942845, -0.10111136704122692, 0.11681627329019051, -0.05903421856412311, 0.19521921218263705, -0.02370810151114977, 0.06461703898036253, 0.13998786150718262, -0.11201883397754818, -0.09976159758237757, -0.06217398412416958, -0.12906739295486927, -0.12133652920981391, -0.1271372430804091, 0.0274669493943423, 0.1583307792565014, -0.06211459861341548]
            }
            
            struct Mid {
                static let values1: [Double] = [23.339024477255577, -12.441113408473313]
                static let values2: [Double] = [-57.836785834777515, -16.987389371760187, -63.09884786907845, -3.3619202228148026, -83.07094357032865, 63.49941469148311, 36.21429109196649]
                static let values3: [Double] = [56.823797332560076, -9.357855660626186, 86.79928262657432, 56.28186010394933, 10.37623574317368, -42.93800045609437, 22.666713287829793, 28.987019069115746, -51.07790280394842, -41.19925956467978, 34.99749052093938]
                static let values4: [Double] = [-80.9558114658461, -67.43064256340811, -31.010891918466513, -16.32131696464714, -61.831198991633585, -82.08059846836338, -30.70622918552634, -92.0481265531018, -80.01410560184858, -82.78945014138348, -64.95836971316137, -37.965892989649944, 54.22067420486641, -26.048142477280933, -39.952902182187145, 83.91447831477453, 5.514409071277669, -10.492105497958562, 61.820823940755304, 62.98528862708713, -20.57484781633869]
            }
            
            struct Large {
                static let values1: [Double] = [-411.5522077713565, 452.5998797184061]
                static let values2: [Double] = [679.0210908916486, -64.84909457164622, 735.5191229658603, -977.9345158798944, 784.6456208118452, -547.5630323624714, -759.5371547032937, -895.6974715191906]
                static let values3: [Double] = [-554.6985982768471, 635.2717161738949, 988.9598813698935, -992.9083819967719, 160.33476011719517, -220.36808281929598, -514.4973029310049, -895.4112690956259, 815.015255945395, -5.453655979820837]
                static let values4: [Double] = [-352.5312506773248, 696.7781263271556, -826.1156693622315, -826.6704401550977, -986.5498962658393, -916.2192263655826, -219.01079748666393, -275.6620455326597, 75.32925703258411, -837.5219362769275, -72.8034295891922, 501.8440974667251, 215.25711662569665, 679.3870482501363, -614.2731047486398, -864.5668565796616, 931.4398647576736, 128.20720034681813, -735.4685658273128, 419.3802969561673, -925.4498519189034]
            }
        }

    }
}
