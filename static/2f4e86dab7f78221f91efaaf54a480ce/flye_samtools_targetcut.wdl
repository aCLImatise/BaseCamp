version 1.0

task FlyesamtoolsTargetcut {
  input {
    File? input_fmt_option
    File? reference
    Int? two
    Int? one
    Int? zero
    String? i
    Int? q
    String sam_tools
    String target_cut
    String in_dot_bam
  }
  command <<<
    flye_samtools targetcut \
      ~{sam_tools} \
      ~{target_cut} \
      ~{in_dot_bam} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(zero) then ("-0 " +  '"' + zero + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(q) then ("-Q " +  '"' + q + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]\\n"
    two: ""
    one: ""
    zero: ""
    i: ""
    q: ""
    sam_tools: ""
    target_cut: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}