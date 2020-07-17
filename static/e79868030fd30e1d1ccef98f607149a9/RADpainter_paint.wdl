version 1.0

task RADpainterPaint {
  input {
    String? ploidy
    Boolean? chr
    Boolean? run_name
    Boolean? missing_two
    String input_dot_txt
  }
  command <<<
    RADpainter paint \
      ~{input_dot_txt} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{true="--chr" false="" chr} \
      ~{true="--run-name" false="" run_name} \
      ~{true="--missing2" false="" missing_two}
  >>>
  parameter_meta {
    ploidy: "ploidy of the species being analysed (default is 2N, i.e. diploid)"
    chr: "output per-chromosome coancestry matrices"
    run_name: "run-name will be included in the output file name(s)"
    missing_two: "(deprecated) output a conancestry matrix with missing data treated as if any pair of individuals are equally distant"
    input_dot_txt: ""
  }
}