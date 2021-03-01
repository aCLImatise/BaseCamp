version 1.0

task Motif2Logopl {
  input {
    Boolean? pdf
    Boolean? ns
    Boolean? bit
    File? prefix_output_file
    File motif_file
  }
  command <<<
    motif2Logo_pl \
      ~{motif_file} \
      ~{if (pdf) then "-pdf" else ""} \
      ~{if (ns) then "-ns" else ""} \
      ~{if (bit) then "-bit" else ""} \
      ~{if defined(prefix_output_file) then ("-o " +  '"' + prefix_output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pdf: "(create a pdf: \\\"motif file\\\".pdf: default creates a PNG image)"
    ns: "<#> (Number of sequences to feed seqlogo: default 100)"
    bit: "(scale logo by information content: default scales nucleotides to probability)"
    prefix_output_file: "(prefix of output file, i.e. outputprefix.png : default, motif file)"
    motif_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix_output_file = "${in_prefix_output_file}"
  }
}