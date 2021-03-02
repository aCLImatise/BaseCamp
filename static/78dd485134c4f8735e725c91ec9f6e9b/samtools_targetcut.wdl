version 1.0

task SamtoolsTargetcut {
  input {
    File? input_fmt_option
    File? reference
    Int? verbosity
    Int? two
    Int? one
    Int? zero
    String? i
    Int? q
    String in_dot_bam
  }
  command <<<
    samtools targetcut \
      ~{in_dot_bam} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
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
    reference: "Reference sequence FASTA FILE [null]"
    verbosity: "Set level of verbosity\\n"
    two: ""
    one: ""
    zero: ""
    i: ""
    q: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}