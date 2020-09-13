version 1.0

task ParallelRunpl {
  input {
    Boolean? file_directory
    Boolean? program_rundefault_mafft
    Boolean? number_of_threads
    String? muscle
    Boolean? translate
    Boolean? one_line
    Boolean? pal_two_nal
  }
  command <<<
    parallel_run_pl \
      ~{if (file_directory) then "-d" else ""} \
      ~{if (program_rundefault_mafft) then "-m" else ""} \
      ~{if (number_of_threads) then "-t" else ""} \
      ~{if defined(muscle) then ("-muscle " +  '"' + muscle + '"') else ""} \
      ~{if (translate) then "-translate" else ""} \
      ~{if (one_line) then "-oneline" else ""} \
      ~{if (pal_two_nal) then "-pal2nal" else ""}
  >>>
  parameter_meta {
    file_directory: "File directory"
    program_rundefault_mafft: "program to run\\ndefault: mafft"
    number_of_threads: "Number of threads"
    muscle: "muscle options\\ndefault: \\\"-diags\\\"\\ntype \\\"muscle\\\" to see additional muscle options"
    translate: ":  Translate DNA to amino acid"
    one_line: ":     Write multi-line fasta sequences to one line"
    pal_two_nal: ":    Convert amino acid alignment to codon alignment, needs DNA fasta file"
  }
  output {
    File out_stdout = stdout()
  }
}