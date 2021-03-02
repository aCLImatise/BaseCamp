version 1.0

task CATSummarise {
  input {
    Boolean? input_file
    File? output_file
    Boolean? contigs_fast_a
    Boolean? force
    Boolean? quiet
  }
  command <<<
    CAT summarise \
      ~{if (input_file) then "--input_file" else ""} \
      ~{if (output_file) then "--output_file" else ""} \
      ~{if (contigs_fast_a) then "--contigs_fasta" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cat:5.2.3--0"
  }
  parameter_meta {
    input_file: "Path to named CAT contig classification file or BAT\\nbin classification file. Currently only official ranks\\nare supported, and only classification files\\ncontaining a single classification per contig / bin.\\nIf you want to summarise a contig classification file,\\nyou have to supply the contigs fasta file with\\nargument [-c / --contigs_fasta]."
    output_file: "Path to output file."
    contigs_fast_a: "Path to contigs fasta file. Required if you want to\\nsummarise a contig classification file."
    force: "Force overwrite existing files."
    quiet: "Suppress verbosity."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}