version 1.0

task Motif2Logopl {
  input {
    Boolean? pdf
    Boolean? ns
    Boolean? bit
    File? prefix_ie_outputprefixpng
    File motif_file
  }
  command <<<
    motif2Logo_pl \
      ~{motif_file} \
      ~{if (pdf) then "-pdf" else ""} \
      ~{if (ns) then "-ns" else ""} \
      ~{if (bit) then "-bit" else ""} \
      ~{if defined(prefix_ie_outputprefixpng) then ("-o " +  '"' + prefix_ie_outputprefixpng + '"') else ""}
  >>>
  parameter_meta {
    pdf: "(create a pdf: \\\"motif file\\\".pdf: default creates a PNG image)"
    ns: "<#> (Number of sequences to feed seqlogo: default 100)"
    bit: "(scale logo by information content: default scales nucleotides to probability)"
    prefix_ie_outputprefixpng: "(prefix of output file, i.e. outputprefix.png : default, motif file)"
    motif_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix_ie_outputprefixpng = "${in_prefix_ie_outputprefixpng}"
  }
}