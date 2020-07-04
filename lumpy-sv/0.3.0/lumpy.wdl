version 1.0

task Lumpy {
  input {
    Boolean? genome_file_defines
    Boolean? show_evidence_call
    Boolean? file_read_default
    Boolean? mw
    Boolean? msw
    Boolean? tt
    Boolean? exclude_file_bed
    Boolean? temp_file_prefix
    Boolean? output_probability_curve
    Boolean? output_instead_vcf
    Boolean? sr
    Boolean? pe
    Boolean? bed_pe
  }
  command <<<
    lumpy \
      ~{true="-g" false="" genome_file_defines} \
      ~{true="-e" false="" show_evidence_call} \
      ~{true="-w" false="" file_read_default} \
      ~{true="-mw" false="" mw} \
      ~{true="-msw" false="" msw} \
      ~{true="-tt" false="" tt} \
      ~{true="-x" false="" exclude_file_bed} \
      ~{true="-t" false="" temp_file_prefix} \
      ~{true="-P" false="" output_probability_curve} \
      ~{true="-b" false="" output_instead_vcf} \
      ~{true="-sr" false="" sr} \
      ~{true="-pe" false="" pe} \
      ~{true="-bedpe" false="" bed_pe}
  >>>
  parameter_meta {
    genome_file_defines: "Genome file (defines chromosome order)"
    show_evidence_call: "Show evidence for each call"
    file_read_default: "File read windows size (default 1000000)"
    mw: "minimum weight for a call"
    msw: "minimum per-sample weight for a call"
    tt: "trim threshold"
    exclude_file_bed: "exclude file bed file"
    temp_file_prefix: "temp file prefix, must be to a writeable directory"
    output_probability_curve: "output probability curve for each variant"
    output_instead_vcf: "output BEDPE instead of VCF"
    sr: "bam_file:<file name>, id:<sample name>, back_distance:<distance>, min_mapping_threshold:<mapping quality>, weight:<sample weight>, min_clip:<minimum clip length>, read_group:<string>"
    pe: "bam_file:<file name>, id:<sample name>, histo_file:<file name>, mean:<value>, stdev:<value>, read_length:<length>, min_non_overlap:<length>, discordant_z:<z value>, back_distance:<distance>, min_mapping_threshold:<mapping quality>, weight:<sample weight>, read_group:<string>"
    bed_pe: "bedpe_file:<bedpe file>, id:<sample name>, weight:<sample weight>"
  }
}