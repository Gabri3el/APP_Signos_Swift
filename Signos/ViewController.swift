//
//  ViewController.swift
//  Signos
//
//  Created by Gabriel on 18/08/21.
//

import UIKit

class ViewController: UITableViewController {

    var signos:[String] = [];
    var significadoSignos:[String] = [];
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("libra")
        signos.append("Escorpião")
        signos.append("Sargitário")
        signos.append("Capricornio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        
        significadoSignos.append("Como o primeiro signo do zodíaco, a presença de Áries quase sempre marca o início de algo enérgico e turbulento. Estas pessoas estão continuamente à procura de dinâmica, velocidade e competição. Elas estão sempre em primeiro lugar em tudo - do trabalho a encontros sociais. Graças ao seu planeta regente Marte, Áries é um dos signos do zodíaco mais ativos. As pessoas nascidas sob o signo de Áries são destinadas a enfatizar a busca de respostas para questões pessoais e metafísicas. Esta é a maior característica desta encarnação.")
        significadoSignos.append("Poderoso e confiável, Touro é o primeiro quando se trata de colher os frutos do seu trabalho. Eles adoram tudo o que é bom e belo, e eles vivem muitas vezes cercados por prazeres materiais. As pessoas nascidas sob o signo de Touro são muito sensuais e táteis. O toque é extremamente importante para eles, tanto nos negócios quanto no romance. Estável e conservador, Touro é um dos signos mais confiáveis do zodíaco. A teimosia é uma característica que o faz levar tudo até as últimas consequências, de modo a cumprir seus rígidos padrões.")
        significadoSignos.append("Expressivo e de raciocínio rápido, Gêmeos representa dois lados diferentes da mesma personalidade e você nunca vai ter certeza de com quem você está falando. Gêmeos pode ser sociável, comunicativo e pronto para se divertir, entretanto, por outro lado, pode ser muito sério, pensativo, inquieto e indeciso.")
        significadoSignos.append("Profundamente intuitivo e sentimental, o canceriano pode ser um dos signos do zodíaco mais desafiadores para entender. Câncer é muito emocional e sensível, e se preocupa com a família e a casa. É simpático e muito apegado às pessoas que o cercam. As pessoas nascidas sob o signo de Câncer são pessoas muito leais e empáticas, capazes de sentir empatia com a dor e sofrimento alheios.")
        significadoSignos.append("As pessoas nascidas sob o signo de Leão são líderes natos. Eles são dramáticos, criativos, autoconfiantes, dominantes e extremamente difíceis de resistir. Eles podem conseguir qualquer coisa que queiram, seja no trabalho ou no tempo gasto com a família e amigos.")
        significadoSignos.append("Os virginianos estão sempre prestando atenção nos menores detalhes e seu profundo senso de humanidade faz com que seja um dos signos mais cuidadosos do zodíaco. Sua abordagem metódica de vida garante que nada é deixado ao acaso. Os virginianos são muitas vezes delicados, mas também muito cuidadosos.")
        significadoSignos.append("As pessoas nascidas sob o signo de Libra são pacíficas e justas, e odeiam ficar sozinhas. A parceria é muito importante para os librianos, e com a sua mentalidade vitoriosa e cooperação, eles não conseguem ficar sozinhos. Libra é um signo de Ar, com o intelecto expresso e uma mente afiada. Eles se sentem inspirados por bons livros, discussões insuperáveis e pessoas interessantes.")
        significadoSignos.append("Os nascidos em Escorpião são pessoas apaixonadas e assertivas. Eles são determinados e decisivos, e pesquisam até encontrar a verdade. O Escorpião é um grande líder, sempre consciente das situações e também se destaca na engenhosidade.")
        significadoSignos.append("Curioso e energético, Sagitário é um dos maiores viajantes entre todos os signos do zodíaco. Sua mente aberta e visão filosófica os motiva a passear ao redor do mundo em busca do sentido da vida.")
        significadoSignos.append("Quando se trata de profissionalismo e valores tradicionais, Capricórnio é o primeiro. Capricórnio é prático e é considerado como o signo mais sério do zodíaco, possuindo uma independência que permite progressos significativos tanto no nível pessoal quanto nos negócios.")
        significadoSignos.append("Os aquarianos são tímidos e quietos, mas por outro lado eles podem ser excêntricos e energéticos. No entanto, em ambos os casos, eles são profundos pensadores e pessoas altamente intelectuais que gostam de ajudar os outros. Eles são capazes de enxergar sem preconceitos, em ambos os lados, o que os torna pessoas que facilmente resolvem problemas.")
        significadoSignos.append("Piscianos são muito simpáticos, então eles muitas vezes se encontram na companhia de pessoas muito diferentes. São altruístas, estão sempre dispostos a ajudar os outros, sem esperar receber nada em troca.")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let celula = tableView.dequeueReusableCell(withIdentifier: "cellReuse", for: indexPath)
        
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Significado do Signo", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        
        let actionConfim = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(actionConfim)
        
        present(alertController, animated: true, completion: nil)
    }

}

