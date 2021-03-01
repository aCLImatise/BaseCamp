version 1.0

task FalconcPhasr {
  input {
    Boolean? help_syntax
    Boolean? _alnfn_string
    Boolean? _reffn_string
    File? _outfn_string
    Boolean? iterations_int_number
    Boolean? kmersize_int_size
    Boolean? _delta_float
  }
  command <<<
    falconc phasr \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_alnfn_string) then "-a" else ""} \
      ~{if (_reffn_string) then "-r" else ""} \
      ~{if (_outfn_string) then "-o" else ""} \
      ~{if (iterations_int_number) then "-i" else ""} \
      ~{if (kmersize_int_size) then "-k" else ""} \
      ~{if (_delta_float) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _alnfn_string: "=, --aln-fn=      string  REQUIRED  BAM alignment, sorted on 'coordinate'"
    _reffn_string: "=, --ref-fn=      string  REQUIRED  FASTA reference"
    _outfn_string: "=, --out-fn=      string  REQUIRED  Output file name"
    iterations_int_number: "=, --iterations=  int     1000      Number of phasing iterations per read"
    kmersize_int_size: "=, --kmersize=    int     21        Kmer size"
    _delta_float: "=, --delta=       float   0.75      Frequency cut"
  }
  output {
    File out_stdout = stdout()
    File out__outfn_string = "${in__outfn_string}"
  }
}