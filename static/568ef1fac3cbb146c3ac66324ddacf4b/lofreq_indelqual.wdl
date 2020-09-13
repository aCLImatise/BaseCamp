version 1.0

task LofreqIndelqual {
  input {
    Boolean? _uniform_int
    Boolean? din_del
    Boolean? _ref_reference
    File? _file_output
    Boolean? verbose
    String in_dot_bam
  }
  command <<<
    lofreq indelqual \
      ~{in_dot_bam} \
      ~{if (_uniform_int) then "-u" else ""} \
      ~{if (din_del) then "--dindel" else ""} \
      ~{if (_ref_reference) then "-f" else ""} \
      ~{if (_file_output) then "-o" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    _uniform_int: "| --uniform INT[,INT]  Add this indel quality uniformly to all bases.\\nUse two comma separated values to specify\\ninsertion and deletion quality separately.\\n(clashes with --dindel)"
    din_del: "Add Dindel's indel qualities (Illumina specific)\\n(clashes with -u; needs --ref)"
    _ref_reference: "| --ref                Reference sequence used for mapping\\n(Only required for --dindel)"
    _file_output: "| --out FILE           Output BAM file [- = stdout = default]"
    verbose: "Be verbose"
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out__file_output = "${in__file_output}"
  }
}