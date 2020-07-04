version 1.0

task VarfishAnnotatorAnnotate {
  input {
    Boolean? case_id
    Boolean? contig_regex
    Boolean? set_id
    String annotate
  }
  command <<<
    varfish-annotator annotate \
      ~{annotate} \
      ~{true="--case-id" false="" case_id} \
      ~{true="--contig-regex" false="" contig_regex} \
      ~{true="--set-id" false="" set_id}
  >>>
  parameter_meta {
    case_id: "The value to use for case ID Default: ."
    contig_regex: "Regular expression to use for selection of contigs Default: ^(chr)?(\d+|X|Y|M|MT)$"
    set_id: "The value to use for set ID Default: ."
    annotate: ""
  }
}