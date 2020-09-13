version 1.0

task LofreqViterbi {
  input {
    Boolean? _ref_file
    Boolean? _keepflags_delete
    Boolean? _defqual_int
    File? _file_output
    Boolean? verbose
    String in_dot_bam
  }
  command <<<
    lofreq viterbi \
      ~{in_dot_bam} \
      ~{if (_ref_file) then "-f" else ""} \
      ~{if (_keepflags_delete) then "-k" else ""} \
      ~{if (_defqual_int) then "-q" else ""} \
      ~{if (_file_output) then "-o" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    _ref_file: "| --ref FILE     Indexed reference fasta file [null]"
    _keepflags_delete: "| --keepflags    Don't delete flags MC, MD, NM and A, which are all prone to change during realignment."
    _defqual_int: "| --defqual INT  Assume INT as quality for all bases with BQ2. Default (=-1) is to use median quality of bases in read."
    _file_output: "| --out FILE     Output BAM file [- = stdout = default]"
    verbose: "Be verbose"
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out__file_output = "${in__file_output}"
  }
}