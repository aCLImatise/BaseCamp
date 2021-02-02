version 1.0

task CATSummarise {
  input {
    Boolean? _inputfile_path
    File? _outputfile_path
    Boolean? _contigsfastapath_contigs
    Boolean? force
    Boolean? quiet
  }
  command <<<
    CAT summarise \
      ~{if (_inputfile_path) then "-i" else ""} \
      ~{if (_outputfile_path) then "-o" else ""} \
      ~{if (_contigsfastapath_contigs) then "-c" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    _inputfile_path: ", --input_file     Path to named CAT contig classification file or BAT\\nbin classification file. Currently only official ranks\\nare supported, and only classification files\\ncontaining a single classification per contig / bin."
    _outputfile_path: ", --output_file    Path to output file."
    _contigsfastapath_contigs: ", --contigs_fasta\\nPath to contigs fasta file. This is required if you\\nwant to summarise a contig classification file."
    force: "Force overwrite existing files."
    quiet: "Suppress verbosity."
  }
  output {
    File out_stdout = stdout()
    File out__outputfile_path = "${in__outputfile_path}"
  }
}