version 1.0

task ProdigalSm {
  input {
    Boolean? write_protein_translations
    Boolean? closed_ends_allow
    Boolean? write_nucleotide_sequences
    Boolean? select_output_format
    Boolean? specify_translation_table
    Boolean? specify_fastagenbank_input
    Boolean? treat_runs_n
    Boolean? bypass_shinedalgarno_trainer
    Boolean? specify_output_file
    Boolean? select_procedure_single
    Boolean? run_quietly_suppress
    Boolean? write_potential_genes
    Boolean? write_training_file
    Boolean? print_version_number
    String prodigal
  }
  command <<<
    prodigal_sm \
      ~{prodigal} \
      ~{true="-a" false="" write_protein_translations} \
      ~{true="-c" false="" closed_ends_allow} \
      ~{true="-d" false="" write_nucleotide_sequences} \
      ~{true="-f" false="" select_output_format} \
      ~{true="-g" false="" specify_translation_table} \
      ~{true="-i" false="" specify_fastagenbank_input} \
      ~{true="-m" false="" treat_runs_n} \
      ~{true="-n" false="" bypass_shinedalgarno_trainer} \
      ~{true="-o" false="" specify_output_file} \
      ~{true="-p" false="" select_procedure_single} \
      ~{true="-q" false="" run_quietly_suppress} \
      ~{true="-s" false="" write_potential_genes} \
      ~{true="-t" false="" write_training_file} \
      ~{true="-v" false="" print_version_number}
  >>>
  parameter_meta {
    write_protein_translations: ":  Write protein translations to the selected file."
    closed_ends_allow: ":  Closed ends.  Do not allow genes to run off edges."
    write_nucleotide_sequences: ":  Write nucleotide sequences of genes to the selected file."
    select_output_format: ":  Select output format (gbk, gff, or sco).  Default is gbk."
    specify_translation_table: ":  Specify a translation table to use (default 11)."
    specify_fastagenbank_input: ":  Specify FASTA/Genbank input file (default reads from stdin)."
    treat_runs_n: ":  Treat runs of N as masked sequence; don't build genes across them."
    bypass_shinedalgarno_trainer: ":  Bypass Shine-Dalgarno trainer and force a full motif scan."
    specify_output_file: ":  Specify output file (default writes to stdout)."
    select_procedure_single: ":  Select procedure (single or meta).  Default is single."
    run_quietly_suppress: ":  Run quietly (suppress normal stderr output)."
    write_potential_genes: ":  Write all potential genes (with scores) to the selected file."
    write_training_file: ":  Write a training file (if none exists); otherwise, read and use the specified training file."
    print_version_number: ":  Print version number and exit."
    prodigal: ""
  }
}