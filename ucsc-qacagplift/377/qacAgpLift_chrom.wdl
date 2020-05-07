version 1.0

task QacAgpLiftChrom.qac {
  input {
    String? scaffoldScaffoldToChromaGp
    String? scaffoldsScaffoldsQac
    String? chromChromQac
  }
  command <<<
    qacAgpLift chrom.qac \
      ~{scaffoldScaffoldToChromaGp} \
      ~{scaffoldsScaffoldsQac} \
      ~{chromChromQac}
  >>>
}