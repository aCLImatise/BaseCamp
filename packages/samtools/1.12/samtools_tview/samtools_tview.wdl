version 1.0

task SamtoolsTview {
  input {
    String? output_html_text
    Boolean? include_customized_file
    String? go_directly_position
    String? display_only_reads
    Int? display_width_only
    File? input_fmt_option
    File? reference
    Int? verbosity
    String aln_dot_bam
    String? ref_dot_fast_a
  }
  command <<<
    samtools tview \
      ~{aln_dot_bam} \
      ~{ref_dot_fast_a} \
      ~{if defined(output_html_text) then ("-d " +  '"' + output_html_text + '"') else ""} \
      ~{if (include_customized_file) then "-X" else ""} \
      ~{if defined(go_directly_position) then ("-p " +  '"' + go_directly_position + '"') else ""} \
      ~{if defined(display_only_reads) then ("-s " +  '"' + display_only_reads + '"') else ""} \
      ~{if defined(display_width_only) then ("-w " +  '"' + display_width_only + '"') else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.12--hd5e65b6_0"
  }
  parameter_meta {
    output_html_text: "output as (H)tml or (C)urses or (T)ext"
    include_customized_file: "include customized index file"
    go_directly_position: ":pos      go directly to this position"
    display_only_reads: "display only reads from this sample or group"
    display_width_only: "display width (with -d T only)"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    verbosity: "Set level of verbosity\\n"
    aln_dot_bam: ""
    ref_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}