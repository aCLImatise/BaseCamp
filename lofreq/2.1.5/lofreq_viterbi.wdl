version 1.0

task LofreqViterbi {
  input {
    Boolean? _ref_file
    Boolean? _keepflags_delete
    Boolean? _defqual_int
    Boolean? _file_file
    String in_dot_bam
  }
  command <<<
    lofreq viterbi \
      ~{in_dot_bam} \
      ~{true="-f" false="" _ref_file} \
      ~{true="-k" false="" _keepflags_delete} \
      ~{true="-q" false="" _defqual_int} \
      ~{true="-o" false="" _file_file}
  >>>
  parameter_meta {
    _ref_file: "| --ref FILE     Indexed reference fasta file [null]"
    _keepflags_delete: "| --keepflags    Don't delete flags MC, MD, NM and A, which are all prone to change during realignment."
    _defqual_int: "| --defqual INT  Assume INT as quality for all bases with BQ2. Default (=-1) is to use median quality of bases in read."
    _file_file: "| --out FILE     Output BAM file [- = stdout = default] --verbose      Be verbose"
    in_dot_bam: ""
  }
}