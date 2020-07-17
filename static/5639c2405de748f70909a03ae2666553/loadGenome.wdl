version 1.0

task LoadGenome.pl {
  input {
    Boolean? org
    Boolean? gid
    Boolean? tid
    String? ensembl_repeats
    String required_parameters_dot_dot_dot
  }
  command <<<
    loadGenome.pl \
      ~{required_parameters_dot_dot_dot} \
      ~{true="-org" false="" org} \
      ~{true="-gid" false="" gid} \
      ~{true="-tid" false="" tid} \
      ~{if defined(ensembl_repeats) then ("-ensemblRepeats " +  '"' + ensembl_repeats + '"') else ""}
  >>>
  parameter_meta {
    org: "<organism name, ok to use 'null'>"
    gid: "(Use gene_id instead of transcript_id to identify the transcripts from GTF files)"
    tid: "(Use transcript_id instead of gene_id to identify the transcripts from GTF files, default)"
    ensembl_repeats: "(gff3 annotations from ensembl usually have repeat definitions too)"
    required_parameters_dot_dot_dot: ""
  }
}