version 1.0

task Ataqv {
  input {
    String? flyFly
    String? humanHuman
    String? mouseMouse
    String? ratRat
    String? wormWorm
    String? yeastYeast
  }
  command <<<
    ataqv \
      ~{flyFly} \
      ~{humanHuman} \
      ~{mouseMouse} \
      ~{ratRat} \
      ~{wormWorm} \
      ~{yeastYeast}
  >>>
}