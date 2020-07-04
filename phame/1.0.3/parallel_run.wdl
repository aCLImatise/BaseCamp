version 1.0

task ParallelRun.pl {
  input {
    Boolean? file_directory
    Boolean? program_run_mafft
    Boolean? number_of_threads
    String? muscle
    Boolean? translate
    Boolean? one_line
    Boolean? pal_two_nal
  }
  command <<<
    parallel_run.pl \
      ~{true="-d" false="" file_directory} \
      ~{true="-m" false="" program_run_mafft} \
      ~{true="-t" false="" number_of_threads} \
      ~{if defined(muscle) then ("-muscle " +  '"' + muscle + '"') else ""} \
      ~{true="-translate" false="" translate} \
      ~{true="-oneline" false="" one_line} \
      ~{true="-pal2nal" false="" pal_two_nal}
  >>>
  parameter_meta {
    file_directory: "File directory"
    program_run_mafft: "program to run default: mafft"
    number_of_threads: "Number of threads"
    muscle: "muscle options  default: \"-diags\" type \"muscle\" to see additional muscle options "
    translate: ":  Translate DNA to amino acid"
    one_line: ":     Write multi-line fasta sequences to one line"
    pal_two_nal: ":    Convert amino acid alignment to codon alignment, needs DNA fasta file"
  }
}