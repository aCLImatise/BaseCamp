version 1.0

task Prodigal {
  input {
    Boolean? write_protein_translations
    Boolean? closed_ends_allow
    Boolean? write_nucleotide_sequences
    Boolean? select_output_format
    Boolean? specify_translation_table
    Boolean? specify_input_file
    Boolean? treat_runs_build
    File? specify_output_file
    Boolean? select_procedure_single
    Boolean? run_quietly_suppress
    Boolean? write_potential_genes
    Boolean? write_training_file
    Boolean? print_version_number
  }
  command <<<
    prodigal \
      ~{if (write_protein_translations) then "-a" else ""} \
      ~{if (closed_ends_allow) then "-c" else ""} \
      ~{if (write_nucleotide_sequences) then "-d" else ""} \
      ~{if (select_output_format) then "-f" else ""} \
      ~{if (specify_translation_table) then "-g" else ""} \
      ~{if (specify_input_file) then "-i" else ""} \
      ~{if (treat_runs_build) then "-m" else ""} \
      ~{if (specify_output_file) then "-o" else ""} \
      ~{if (select_procedure_single) then "-p" else ""} \
      ~{if (run_quietly_suppress) then "-q" else ""} \
      ~{if (write_potential_genes) then "-s" else ""} \
      ~{if (write_training_file) then "-t" else ""} \
      ~{if (print_version_number) then "-v" else ""}
  >>>
  parameter_meta {
    write_protein_translations: ":  Write protein translations to the selected file."
    closed_ends_allow: ":  Closed ends.  Do not allow genes to run off edges."
    write_nucleotide_sequences: ":  Write nucleotide sequences of genes to the selected file."
    select_output_format: ":  Select output format (gbk, gff, or sco).  Default is gbk."
    specify_translation_table: ":  Specify a translation table to use (default 11)."
    specify_input_file: ":  Specify input file (default reads from stdin)."
    treat_runs_build: ":  Treat runs of n's as masked sequence and do not build genes across"
    specify_output_file: ":  Specify output file (default writes to stdout)."
    select_procedure_single: ":  Select procedure (single or meta).  Default is single."
    run_quietly_suppress: ":  Run quietly (suppress normal stderr output)."
    write_potential_genes: ":  Write all potential genes (with scores) to the selected file."
    write_training_file: ":  Write a training file (if none exists); otherwise, read and use\\nthe specified training file."
    print_version_number: ":  Print version number and exit."
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}