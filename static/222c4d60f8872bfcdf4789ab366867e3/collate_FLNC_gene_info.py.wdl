version 1.0

task CollateFLNCGeneInfopy {
  input {
    File? on_target_filename
    String? ded_up_orf_prefix
    Boolean? no_extra_base
    String positional_arguments
    String group_filename
    String csv_filename
    String class_filename
    String output_filename
  }
  command <<<
    collate_FLNC_gene_info_py \
      ~{positional_arguments} \
      ~{group_filename} \
      ~{csv_filename} \
      ~{class_filename} \
      ~{output_filename} \
      ~{if defined(on_target_filename) then ("--ontarget_filename " +  '"' + on_target_filename + '"') else ""} \
      ~{if defined(ded_up_orf_prefix) then ("--dedup_ORF_prefix " +  '"' + ded_up_orf_prefix + '"') else ""} \
      ~{if (no_extra_base) then "--no-extra-base" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    on_target_filename: "(Optional) on target information text"
    ded_up_orf_prefix: "(Optional) dedup-ed ORF group prefix, must have\\n<pre>.faa and <pre>.group.txt"
    no_extra_base: "Drop all reads where there are extra bases"
    positional_arguments: "positional arguments:"
    group_filename: "Collapse .group.txt"
    csv_filename: "Trimmed UMI/BC CSV info"
    class_filename: "SQANTI classification.txt"
    output_filename: "Output filename"
  }
  output {
    File out_stdout = stdout()
  }
}