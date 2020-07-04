version 1.0

task CATSummarise {
  input {
    Boolean? _inputfile_path
    Boolean? _outputfile_path
    Boolean? _contigsfasta_path
    Boolean? force
    Boolean? quiet
  }
  command <<<
    CAT summarise \
      ~{true="-i" false="" _inputfile_path} \
      ~{true="-o" false="" _outputfile_path} \
      ~{true="-c" false="" _contigsfasta_path} \
      ~{true="--force" false="" force} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    _inputfile_path: ", --input_file     Path to named CAT contig classification file or BAT bin classification file. Currently only official ranks are supported, and only classification files containing a single classification per contig / bin."
    _outputfile_path: ", --output_file    Path to output file."
    _contigsfasta_path: ", --contigs_fasta  Path to contigs fasta file. This is required if you want to summarise a contig classification file."
    force: "Force overwrite existing files."
    quiet: "Suppress verbosity."
  }
}