version 1.0

task LofreqIndelqual {
  input {
    Boolean? _uniform_int
    Boolean? _ref_reference
    Boolean? _file_output
    String in_dot_bam
  }
  command <<<
    lofreq indelqual \
      ~{in_dot_bam} \
      ~{true="-u" false="" _uniform_int} \
      ~{true="-f" false="" _ref_reference} \
      ~{true="-o" false="" _file_output}
  >>>
  parameter_meta {
    _uniform_int: "| --uniform INT[,INT]  Add this indel quality uniformly to all bases. Use two comma separated values to specify insertion and deletion quality separately. (clashes with --dindel) --dindel             Add Dindel's indel qualities (Illumina specific) (clashes with -u; needs --ref)"
    _ref_reference: "| --ref                Reference sequence used for mapping (Only required for --dindel)"
    _file_output: "| --out FILE           Output BAM file [- = stdout = default] --verbose            Be verbose"
    in_dot_bam: ""
  }
}