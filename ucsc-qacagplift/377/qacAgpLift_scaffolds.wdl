version 1.0

task QacAgpLiftScaffolds.qac {
  input {
    String? scaffoldScaffoldToChromaGp
    String? scaffoldsScaffoldsQac
    String? chromChromQac
  }
  command <<<
    qacAgpLift scaffolds.qac \
      ~{scaffoldScaffoldToChromaGp} \
      ~{scaffoldsScaffoldsQac} \
      ~{chromChromQac}
  >>>
}