version 1.0

task Scompare {
  input {
    Boolean optionsOptions
    String? testTestMsa
  }
  command <<<
    scompare \
      ~{testTestMsa} \
      ~{true="-options" false="" optionsOptions}
  >>>
}