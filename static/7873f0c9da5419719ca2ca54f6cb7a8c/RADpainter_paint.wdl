version 1.0

task RADpainterPaint {
  input {
    Int? ploidy
    Boolean? chr
    File? run_name
    Boolean? missing_two
    String input_dot_txt
  }
  command <<<
    RADpainter paint \
      ~{input_dot_txt} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if (chr) then "--chr" else ""} \
      ~{if (run_name) then "--run-name" else ""} \
      ~{if (missing_two) then "--missing2" else ""}
  >>>
  parameter_meta {
    ploidy: "ploidy of the species being analysed (default is 2N, i.e. diploid)"
    chr: "output per-chromosome coancestry matrices"
    run_name: "run-name will be included in the output file name(s)"
    missing_two: "(deprecated) output a conancestry matrix with missing data treated\\nas if any pair of individuals are equally distant"
    input_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
    File out_run_name = "${in_run_name}"
  }
}