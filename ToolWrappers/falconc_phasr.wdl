version 1.0

task FalconcPhasr {
  input {
    Boolean? help_syntax
    Boolean? _alnfn_string
    Boolean? _reffn_string
    File? _outfn_string
    Boolean? _iterations_number
    Boolean? _int_kmer
    Boolean? _delta_float
  }
  command <<<
    falconc phasr \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_alnfn_string) then "-a" else ""} \
      ~{if (_reffn_string) then "-r" else ""} \
      ~{if (_outfn_string) then "-o" else ""} \
      ~{if (_iterations_number) then "-i" else ""} \
      ~{if (_int_kmer) then "-k" else ""} \
      ~{if (_delta_float) then "-d" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _alnfn_string: "=, --aln-fn=      string  REQUIRED  BAM alignment, sorted on 'coordinate'"
    _reffn_string: "=, --ref-fn=      string  REQUIRED  FASTA reference"
    _outfn_string: "=, --out-fn=      string  REQUIRED  Output file name"
    _iterations_number: "=, --iterations=  int     1000      Number of phasing iterations per read"
    _int_kmer: "=, --kmersize=    int     21        Kmer size"
    _delta_float: "=, --delta=       float   0.75      Frequency cut"
  }
  output {
    File out_stdout = stdout()
    File out__outfn_string = "${in__outfn_string}"
  }
}