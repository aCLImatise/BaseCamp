version 1.0

task QacAgpLiftScaffoldToChrom.agpChrom.qac {
  input {
    String? scaffoldsScaffoldsQac
    String? chromChromQac
  }
  command <<<
    qacAgpLift scaffoldToChrom.agp chrom.qac \
      ~{scaffoldsScaffoldsQac} \
      ~{chromChromQac}
  >>>
}