version 1.0

task CollateFLNCGeneInfo.py {
  input {
    String? on_target_filename
    String? ded_up_orf_prefix
    Boolean? no_extra_base
    String group_filename
    String csv_filename
    String class_filename
    String output_filename
  }
  command <<<
    collate_FLNC_gene_info.py \
      ~{group_filename} \
      ~{csv_filename} \
      ~{class_filename} \
      ~{output_filename} \
      ~{if defined(on_target_filename) then ("--ontarget_filename " +  '"' + on_target_filename + '"') else ""} \
      ~{if defined(ded_up_orf_prefix) then ("--dedup_ORF_prefix " +  '"' + ded_up_orf_prefix + '"') else ""} \
      ~{true="--no-extra-base" false="" no_extra_base}
  >>>
  parameter_meta {
    on_target_filename: "(Optional) on target information text"
    ded_up_orf_prefix: "(Optional) dedup-ed ORF group prefix, must have <pre>.faa and <pre>.group.txt"
    no_extra_base: "Drop all reads where there are extra bases"
    group_filename: "Collapse .group.txt"
    csv_filename: "Trimmed UMI/BC CSV info"
    class_filename: "SQANTI classification.txt"
    output_filename: "Output filename"
  }
}