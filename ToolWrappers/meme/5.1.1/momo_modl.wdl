version 1.0

task MomoModl {
  input {
    String? psm_type
    Boolean? sequence_column
    Boolean? width
    File? protein_database
    Boolean? filter
    String? remove_unknowns
    Boolean? eliminate_repeats
    Boolean? min_occurrences
    Boolean? single_motif_per_mass
    Boolean? seed
    Boolean? db_background
    Boolean? max_iterations
    Boolean? max_no_decrease
    Int? verbosity
    File ptm_file
  }
  command <<<
    momo modl \
      ~{ptm_file} \
      ~{if defined(psm_type) then ("--psm-type " +  '"' + psm_type + '"') else ""} \
      ~{if (sequence_column) then "--sequence-column" else ""} \
      ~{if (width) then "--width" else ""} \
      ~{if defined(protein_database) then ("--protein-database " +  '"' + protein_database + '"') else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if defined(remove_unknowns) then ("--remove-unknowns " +  '"' + remove_unknowns + '"') else ""} \
      ~{if (eliminate_repeats) then "--eliminate-repeats" else ""} \
      ~{if (min_occurrences) then "--min-occurrences" else ""} \
      ~{if (single_motif_per_mass) then "--single-motif-per-mass" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (db_background) then "--db-background" else ""} \
      ~{if (max_iterations) then "--max-iterations" else ""} \
      ~{if (max_no_decrease) then "--max-no-decrease" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    psm_type: "|ms-gf+|tide|percolator"
    sequence_column: "[column name]"
    width: "[positive odd integer] (default: 7)"
    protein_database: "(default: None)"
    filter: "[field],lt|le|eq|ge|gt,[threshold] (default: no filter)"
    remove_unknowns: "|F (default: F)"
    eliminate_repeats: "[positive odd integer or 0 for no elimination] (default: width)"
    min_occurrences: "[non-negative] (default: 5)"
    single_motif_per_mass: "[positive integer or 0 for linear search] (default: 0)"
    seed: "[non-negative integer]"
    db_background: "[positive integer] (default: 100)"
    max_iterations: "[positive integer] (default: 50)"
    max_no_decrease: "[positive integer] (default: 10)"
    verbosity: "|2|3|4|5 (default: 2)"
    ptm_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}