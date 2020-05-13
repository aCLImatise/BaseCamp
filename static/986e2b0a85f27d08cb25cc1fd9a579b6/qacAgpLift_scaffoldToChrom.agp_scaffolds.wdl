version 1.0

task QacAgpLiftScaffoldToChrom.agpScaffolds.qac {
  input {
    String? chromChromQac
  }
  command <<<
    qacAgpLift scaffoldToChrom.agp scaffolds.qac \
      ~{chromChromQac}
  >>>
}