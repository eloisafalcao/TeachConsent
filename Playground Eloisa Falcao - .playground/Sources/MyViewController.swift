import UIKit

public class MyViewController : UIViewController {
    
    var numeroDaCena: Int = 0
    var button : UIButton!
    var button2 : UIButton!
    var caixaDoTextoView : UIImageView!
    var texto : UILabel!
    var animationEvaPergunta : [UIImage] = []
    var animationGinaDesconfortavel : [UIImage] = []
    var animationEvaNormal : [UIImage] = []
    var animationView : UIImageView!
    var animationEvaExcited : [UIImage] = []
    var animationGinaNormal: [UIImage] = []
    var animationEvaBrava: [UIImage] = []
    var animationGinaDormindo: [UIImage] = []

    var listaFalasPersonagens: [String] = ["Hello there! My name is Eve, and people say I ask a lot of questions, but I would say I'm an explorer of the world, and explorers should make questions.\n Are you an explorer too?",
                                           "Great! explorers are the bests! While I was exploring I learned this thing called consentiment, do you know what it is? let me explain to you...",
                                           "Ow, you should try to become a explorer too, is really fun. \n  While I was exploring I learned this thing called consentiment, do you know what it is? let me explain to you...",
                                           "Consenting is about asking questions. You should to make yourself clear to what I want the people to consent to, and make sure your friend is able to choose, and communicate his choose clearly. \n Do you know how to ask questions?",
                                           "Let's put this in practice. Try to ask Lola if she can give you a hug",
                                           "It´s okay, just remember what I just said. Try to ask Lola if she can give you a hug",
                                           "That´s a great ideia, let´s see her answer",
                                           "Be careful, consentiment is about making questions, never try to impose something. Let´s see her answer",
                                           "Lola: Sorry, I don´t feel confortable right now to give you a hug",
                                           "That´s a great choose, consent is also about listening. Lola has the right to say yes and no, and also she can CHANGE HER MIND anytime, like when you said you want more ice cream but your belly is so full and you decide you don’t want it anymore. \n Let's try to ask again",
                                           "This wasn't a good choice, consent is also about listening. Lola has the right to say yes and no, and also she can CHANGE HER MIND anytime, like when you said you want more ice cream but your belly is so full and you decide you don’t want it anymore. \n Let's try to ask again",
                                           "Ops. It looks like she´s in the nap time, what do we do?",
                                           "Oh no, you better stop here, consent MUST BE A BIG AND CLEAR YES. Not refuse is not consent. If you ask about it, you must listen to her say clearly what she want, and right now she´s not able to do so",
                                           "Good choice, consent MUST BE A BIG AND CLEAR YES. Not refuse is not consent. If you ask about it, you must listen to her say clearly what she want, and right now she´s not able to do so",
                                           "That's why I'm here today with you, to explain about this wonderful thing called CONSENT, which the most important part is the respect. Is about learning how to understand others position and accept their choices, it's about learning the others limits. It's about trust, shouldn't be violated",
                                           "And it’s also about people respecting your choices, so if you feel like somebody is doing something with you, without your consent and it makes you feel bad, find an adult you trust, and talk with him about it",
                                           "This was fun, I hope to see you soon!"]

    var listaDeOpcaoBotao: [String] = ["Yes",
                                       "next",
                                       "next",
                                       """
                                        Yes, of course
                                          that´s easy
                                       """,
                                       "Can I give you a hug?",
                                       "Can I give you a hug?",
                                       "next",
                                       "next",
                                       "It´s okay Lola, maybe other time",
                                       "Can I give you a hug?",
                                       "Can I give you a hug?",
                                       "Hug her anyway, she didn´t said yes, but she also didn´t said no",
                                       "next",
                                       "next",
                                       "next",
                                       "Try again",
                                       "  "]

    var listaDeOpcaoBotao2: [String] = ["No",
                                        "next",
                                        "next",
                                        "I´m not so sure",
                                        "Hug me now!",
                                        "Hug me now!",
                                        "next",
                                        "next",
                                        "Try to hug her anyway",
                                        "Can I give you a hug?",
                                        "Can I give you a hug? ",
                                        "Wait, until she´s wake and able to answer, and ask again.",
                                        "next",
                                        "next",
                                        "next",
                                        "end",
                                        " "]
    override public func loadView() {
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8883944154, green: 0.6580154896, blue: 0.6210538149, alpha: 1)
        
        //ANIMATIONS
        animationEvaPergunta.append((UIImage(named: "EVA pergunta.png")!))
        animationEvaPergunta.append((UIImage(named: "EVAnormal.png")!))
        animationEvaPergunta.append((UIImage(named: "EVAsorrindodebocafechadsa.png")!))
        
        animationEvaBrava.append((UIImage(named: "EVAbrava.png")!))
        animationEvaBrava.append((UIImage(named: "EVAsorrindodebocafechadsa.png")!))
        
        animationGinaDormindo.append((UIImage(named: "gina dormindo.png")!))
        animationGinaDormindo.append((UIImage(named: "gina dormindo2.png")!))
        animationGinaDormindo.append((UIImage(named: "gina dormindo 2.png")!))
        
        animationEvaExcited.append((UIImage(named: "EVAexcited copy")!))
        animationEvaExcited.append((UIImage(named: "EVAexcited2")!))
        animationEvaExcited.append((UIImage(named: "EVAsorrindo")!))
        animationEvaExcited.append((UIImage(named: "EVAnormal.png")!))
        
        animationGinaDesconfortavel.append((UIImage(named: "gina desconfrotável.png")!))
        animationGinaDesconfortavel.append((UIImage(named: "gina pergunta.png")!))
        animationGinaDesconfortavel.append((UIImage(named: "gina desconfrotável2.png")!))
        
        animationGinaNormal.append((UIImage(named: "gina normal.png")!))
        animationGinaNormal.append((UIImage(named: "gina pergunta.png")!))
        
        animationEvaNormal.append((UIImage(named: "EVAcabeçadeitada.png")!))
        animationEvaNormal.append((UIImage(named: "EVAnormal.png")!))
        animationEvaNormal.append((UIImage(named: "EVAsorrindo.png")!))
        animationEvaNormal.append((UIImage(named: "EVAsorrindodebocafechadsa.png")!))
        
        animationView = UIImageView()
        view.addSubview(animationView)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 300).isActive = true
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 200).isActive = true
        
        //BUTTONS
        button = UIButton()
        button.setTitle("Yes", for: .normal)
        button.titleLabel?.font = UIFont(name: " ", size: 18)
        button.titleLabel?.textAlignment = NSTextAlignment.center
        button.backgroundColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        button.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.addTarget(self, action: #selector(updateView), for: .touchDown)
        button.titleLabel?.numberOfLines = 3
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.layer.cornerRadius = 10
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -370).isActive = true
        button.topAnchor.constraint(equalTo: view.topAnchor, constant: 700).isActive = true


        button.widthAnchor.constraint(equalToConstant: 180).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true

        button2 = UIButton()
        button2.setTitle("No", for: .normal)
        button2.titleLabel?.font = UIFont(name: " ", size: 18)
        button2.titleLabel?.textAlignment = NSTextAlignment.center
        button2.backgroundColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        button2.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button2.addTarget(self, action: #selector(updateView2), for: .touchDown)
        button2.titleLabel?.numberOfLines = 3
        button2.titleLabel?.adjustsFontSizeToFitWidth = true
        button2.layer.cornerRadius = 10
        view.addSubview(button2)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -170).isActive = true
        button2.topAnchor.constraint(equalTo: view.topAnchor, constant: 700).isActive = true


        button2.widthAnchor.constraint(equalToConstant: 180).isActive = true
        button2.heightAnchor.constraint(equalToConstant: 100).isActive = true


        //TEXT
        texto = UILabel()
        texto.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        texto.font = UIFont(name: " ", size: 18)
        texto.layer.cornerRadius = 10
        texto.textAlignment = NSTextAlignment.center
        texto.text = "0Hi there! My name is Eva, and people say I ask a lot of questions, but I would say I'm an explorer of the world, and explorers should make questions. Are you an explorer too?"
        texto.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
        texto.lineBreakMode = .byWordWrapping
        texto.numberOfLines = 45
        texto.adjustsFontSizeToFitWidth = true
        view.addSubview(texto)
        texto.translatesAutoresizingMaskIntoConstraints = false
        texto.topAnchor.constraint(equalTo: view.topAnchor, constant: 550).isActive = true
        texto.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100).isActive = true
        texto.widthAnchor.constraint(equalToConstant: 500).isActive = true
        texto.heightAnchor.constraint(equalToConstant: 150).isActive = true


        //START SCENE
        criarCena(numeroDaNovaCena: 0, imgur: animationEvaNormal)

        self.view = view

    }
    

    //THIS PART DEFINES THE PATHS THAT THE USER CAN CHOOSE
    @objc func updateView() {
        switch numeroDaCena {
        case 0:
            criarCena(numeroDaNovaCena: 1, imgur: animationEvaExcited)
            button.isHidden = true
            button2.isHidden = false
        case 1:
            criarCena(numeroDaNovaCena: 3, imgur: animationEvaPergunta)
        case 2:
            criarCena(numeroDaNovaCena: 3, imgur: animationEvaExcited)
        case 3:
            criarCena(numeroDaNovaCena: 4, imgur: animationGinaNormal)
        case 4:
            criarCena(numeroDaNovaCena: 6, imgur: animationEvaExcited)
            button.isHidden = true
            button2.isHidden = false

        case 5:
            criarCena(numeroDaNovaCena: 6, imgur: animationEvaExcited)
            button.isHidden = true
            button2.isHidden = false
        case 6:
            criarCena(numeroDaNovaCena: 8, imgur: animationGinaDesconfortavel)

        case 8:
            criarCena(numeroDaNovaCena: 9, imgur: animationEvaExcited)
            button.isHidden = true
            button2.isHidden = false
        case 7:
            criarCena(numeroDaNovaCena: 8, imgur: animationGinaDesconfortavel)
        case 9:
            criarCena(numeroDaNovaCena: 11, imgur: animationGinaDormindo)
            button.isHidden = false
            button2.isHidden = false
        case 10:
            criarCena(numeroDaNovaCena: 11, imgur: animationGinaDormindo)
            button.isHidden = false
            button2.isHidden = false
        case 11:
            criarCena(numeroDaNovaCena: 12, imgur: animationEvaBrava)
            button.isHidden = true
            button2.isHidden = false

        case 12:
            criarCena(numeroDaNovaCena: 14, imgur: animationEvaExcited)
            button.isHidden = true
            button2.isHidden = false
        case 13:
            criarCena(numeroDaNovaCena: 14, imgur: animationEvaExcited)
            button.isHidden = true
            button2.isHidden = false
        case 14:
            criarCena(numeroDaNovaCena: 15, imgur: animationEvaBrava)
            button.isHidden = false
            button2.isHidden = false

        case 15:
            criarCena(numeroDaNovaCena: 0, imgur: animationEvaNormal)

        default:
            print("deu ruim")
        }

    }

    @objc func updateView2() {
        switch numeroDaCena {
        case 0:
            criarCena(numeroDaNovaCena: 2, imgur: animationEvaNormal)
            button.isHidden = true
            button2.isHidden = false

        case 1:
            criarCena(numeroDaNovaCena: 3, imgur: animationEvaPergunta)
            button.isHidden = false
            button2.isHidden = false

        case 2:
            criarCena(numeroDaNovaCena: 3, imgur: animationEvaPergunta)
            button.isHidden = false
            button2.isHidden = false

        case 3:
            criarCena(numeroDaNovaCena: 5, imgur: animationGinaDesconfortavel)
        case 4:
            criarCena(numeroDaNovaCena: 7, imgur: animationEvaBrava)
            button.isHidden = true
            button2.isHidden = false
        case 5:
            criarCena(numeroDaNovaCena: 7, imgur: animationEvaBrava)
            button.isHidden = true
            button2.isHidden = false

        case 6:
            criarCena(numeroDaNovaCena: 8, imgur: animationGinaDesconfortavel)
            button.isHidden = false
            button2.isHidden = false

        case 8:
            criarCena(numeroDaNovaCena: 10, imgur: animationEvaBrava)
            button.isHidden = true
            button2.isHidden = false

        case 7:
            criarCena(numeroDaNovaCena: 8, imgur: animationGinaDesconfortavel)
            button.isHidden = false
            button2.isHidden = false

        case 9:
            criarCena(numeroDaNovaCena: 11, imgur: animationGinaDormindo)
            button.isHidden = false
            button2.isHidden = false
        case 10:
            criarCena(numeroDaNovaCena: 11, imgur: animationGinaDormindo)
            button.isHidden = false
            button2.isHidden = false
        case 11:
            criarCena(numeroDaNovaCena: 13, imgur: animationEvaNormal)
            button.isHidden = true
            button2.isHidden = false

        case 12:
            criarCena(numeroDaNovaCena: 14, imgur: animationEvaExcited)
            button.isHidden = true
            button2.isHidden = false
        case 13:
            criarCena(numeroDaNovaCena: 14, imgur: animationEvaExcited)
            button.isHidden = true
            button2.isHidden = false

        case 14:
            criarCena(numeroDaNovaCena: 15, imgur: animationEvaBrava)
            button.isHidden = false
            button2.isHidden = false

        case 15:
            criarCena(numeroDaNovaCena: 16, imgur: animationEvaNormal)
            button.isHidden = true
            button2.isHidden = true

        case 16:
            criarCena(numeroDaNovaCena: 16, imgur: animationEvaNormal)
        default:
            print("deu ruim")
        }

    }


    func criarCena (numeroDaNovaCena: Int, imgur: [UIImage]) {
        runAnimation(vimg: imgur)
        texto.text = listaFalasPersonagens [numeroDaNovaCena]
        button.setTitle(listaDeOpcaoBotao[numeroDaNovaCena], for: .normal)
        button2.setTitle(listaDeOpcaoBotao2 [numeroDaNovaCena], for: .normal)
        numeroDaCena = numeroDaNovaCena
    }
    
    
    func toggleStarred() {
    }
    
    func runAnimation(vimg: [UIImage]) {
        self.animationView.animationImages = vimg
        self.animationView.animationDuration = 1
        self.animationView.startAnimating()
    }
}
