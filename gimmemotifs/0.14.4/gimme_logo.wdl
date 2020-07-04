version 1.0

task GimmeLogo {
  input {
    String? pfm_file
    String? ids
    String? kind
    Boolean? no_title
    Boolean? h
    String gimme
    String subcommand
    String logo
  }
  command <<<
    gimme logo \
      ~{gimme} \
      ~{subcommand} \
      ~{logo} \
      ~{if defined(pfm_file) then ("--pfmfile " +  '"' + pfm_file + '"') else ""} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(kind) then ("--kind " +  '"' + kind + '"') else ""} \
      ~{true="--notitle" false="" no_title} \
      ~{true="-h" false="" h}
  >>>
  parameter_meta {
    pfm_file: "PFM file with motifs"
    ids: "Comma-separated list of motif ids (default is all ids)"
    kind: "Type of motif (information, frequency, energy or ensembl)"
    no_title: "Don't include motif ID as title"
    h: ""
    gimme: ""
    subcommand: ""
    logo: ""
  }
}