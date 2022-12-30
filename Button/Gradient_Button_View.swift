// Gradient  UIViw or UIButton
class GradientButton: UIView {
    
    var startColor: UIColor = UIColor.green
    var endColor  : UIColor = UIColor.blue
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        createGradient()
        setCornerRadius()
    }
    func createGradient() {
        let gradientColors: [CGColor] = [startColor.cgColor, endColor.cgColor]
       
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        gradientLayer.colors = gradientColors
        layer.insertSublayer(gradientLayer, at: 0)
    }
    func setCornerRadius() {
        layer.masksToBounds   = true
        layer.borderWidth     = 1
        layer.cornerRadius    = 10
        layer.backgroundColor = UIColor.clear.cgColor
        layer.borderColor     = UIColor.red.cgColor
    }
}


