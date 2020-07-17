version 1.0

task Motif2Logo.pl {
  input {
    Boolean? pdf
    Boolean? ns
    Boolean? bit
    String? prefix_default_file
    String motif_file
  }
  command <<<
    motif2Logo.pl \
      ~{motif_file} \
      ~{true="-pdf" false="" pdf} \
      ~{true="-ns" false="" ns} \
      ~{true="-bit" false="" bit} \
      ~{if defined(prefix_default_file) then ("-o " +  '"' + prefix_default_file + '"') else ""}
  >>>
  parameter_meta {
    pdf: "(create a pdf: \"motif file\".pdf: default creates a PNG image)"
    ns: "<#> (Number of sequences to feed seqlogo: default 100)"
    bit: "(scale logo by information content: default scales nucleotides to probability)"
    prefix_default_file: "(prefix of output file, i.e. outputprefix.png : default, motif file)"
    motif_file: ""
  }
}