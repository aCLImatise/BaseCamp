version 1.0

task GraftMUpdate {
  input {
    String? graft_m_package
    Boolean? regenerate_diamond_db
    File? taxonomy
    String? sequences
    File? name_output_graftm
    Int? verbosity
    File? log
  }
  command <<<
    graftM update \
      ~{if defined(graft_m_package) then ("--graftm_package " +  '"' + graft_m_package + '"') else ""} \
      ~{if (regenerate_diamond_db) then "--regenerate_diamond_db" else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(name_output_graftm) then ("--output " +  '"' + name_output_graftm + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    graft_m_package: "GraftM package to update"
    regenerate_diamond_db: "Recreate the diamond DB in the package"
    taxonomy: "File containing two tab separated columns, the first with the ID of the sequences, the second with the taxonomy string (required unless --rerooted_annotated_tree or --taxtastic_taxonomy and --taxtastic_seqinfo are specified)"
    sequences: "Unaligned sequences (required unless --regenerate_diamond_db is set)"
    name_output_graftm: "Name of output GraftM package"
    verbosity: "1 - 5, 1 being silent, 5 being noisy indeed (default: 4)"
    log: "output logging information to file"
  }
  output {
    File out_stdout = stdout()
    File out_log = "${in_log}"
  }
}