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
    File? specify_file_default
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
      ~{if (write_protein_translations) then "-a" else ""} \
      ~{if (closed_ends_allow) then "-c" else ""} \
      ~{if (write_nucleotide_sequences) then "-d" else ""} \
      ~{if (select_output_format) then "-f" else ""} \
      ~{if (specify_translation_table) then "-g" else ""} \
      ~{if (specify_fastagenbank_input) then "-i" else ""} \
      ~{if (treat_runs_n) then "-m" else ""} \
      ~{if (bypass_shinedalgarno_trainer) then "-n" else ""} \
      ~{if (specify_file_default) then "-o" else ""} \
      ~{if (select_procedure_single) then "-p" else ""} \
      ~{if (run_quietly_suppress) then "-q" else ""} \
      ~{if (write_potential_genes) then "-s" else ""} \
      ~{if (write_training_file) then "-t" else ""} \
      ~{if (print_version_number) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/macrel:1.0.0--py38h0213d0e_0"
  }
  parameter_meta {
    write_protein_translations: ":  Write protein translations to the selected file."
    closed_ends_allow: ":  Closed ends.  Do not allow genes to run off edges."
    write_nucleotide_sequences: ":  Write nucleotide sequences of genes to the selected file."
    select_output_format: ":  Select output format (gbk, gff, or sco).  Default is gbk."
    specify_translation_table: ":  Specify a translation table to use (default 11)."
    specify_fastagenbank_input: ":  Specify FASTA/Genbank input file (default reads from stdin)."
    treat_runs_n: ":  Treat runs of N as masked sequence; don't build genes across them."
    bypass_shinedalgarno_trainer: ":  Bypass Shine-Dalgarno trainer and force a full motif scan."
    specify_file_default: ":  Specify output file (default writes to stdout)."
    select_procedure_single: ":  Select procedure (single or meta).  Default is single."
    run_quietly_suppress: ":  Run quietly (suppress normal stderr output)."
    write_potential_genes: ":  Write all potential genes (with scores) to the selected file."
    write_training_file: ":  Write a training file (if none exists); otherwise, read and use\\nthe specified training file."
    print_version_number: ":  Print version number and exit."
    prodigal: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_file_default = "${in_specify_file_default}"
  }
}