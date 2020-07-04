version 1.0

task FastxEndsTab.py {
  input {
    String? i
    String? n
    String input_fast_x
    String output_tsv
  }
  command <<<
    fastx_ends_tab.py \
      ~{input_fast_x} \
      ~{output_tsv} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    n: ""
    input_fast_x: "Input file (default: stdin)."
    output_tsv: "Output file (default: stdout)."
  }
}