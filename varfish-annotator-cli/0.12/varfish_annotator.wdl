version 1.0

task VarfishAnnotator {
  input {
    Boolean? clin_var_path
    Boolean? hgmd_public
    Boolean? region
    Boolean? thousand_genomes_path
    Boolean? case_id
    Boolean? contig_regex
    Boolean? set_id
  }
  command <<<
    varfish-annotator \
      ~{true="--clinvar-path" false="" clin_var_path} \
      ~{true="--hgmd-public" false="" hgmd_public} \
      ~{true="--region" false="" region} \
      ~{true="--thousand-genomes-path" false="" thousand_genomes_path} \
      ~{true="--case-id" false="" case_id} \
      ~{true="--contig-regex" false="" contig_regex} \
      ~{true="--set-id" false="" set_id}
  >>>
  parameter_meta {
    clin_var_path: "Path to Clinvar TSV file(s) to use for import, see documentation  for more information"
    hgmd_public: "Path to HTMD Public TSV file to use for import, see documentation  for more information"
    region: "Genomic region CHR:START-END (1-based) to import"
    thousand_genomes_path: "Path to 1000 genomes VCF file to use for import, see documentation  for more information"
    case_id: "The value to use for case ID Default: ."
    contig_regex: "Regular expression to use for selection of contigs Default: ^(chr)?(\d+|X|Y|M|MT)$"
    set_id: "The value to use for set ID Default: ."
  }
}