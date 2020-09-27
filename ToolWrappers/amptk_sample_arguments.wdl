version 1.0

task AmptkSampleArguments {
  input {
    String? o
    Int? n
    String? i
    String am_ptk_barcode_rarifydotpy
  }
  command <<<
    amptk sample arguments \
      ~{am_ptk_barcode_rarifydotpy} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    n: ""
    i: ""
    am_ptk_barcode_rarifydotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}