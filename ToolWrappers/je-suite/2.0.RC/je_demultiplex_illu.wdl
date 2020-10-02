version 1.0

task JeDemultiplexillu {
  input {
    Boolean? displays_options_specific
    String data_dot
    String required_dot
    String or
    String provided_dot
    String distinct
    String becomes
    String detected_dot
    String barcoded_dot
    String null_dot
  }
  command <<<
    je demultiplex_illu \
      ~{data_dot} \
      ~{required_dot} \
      ~{or} \
      ~{provided_dot} \
      ~{distinct} \
      ~{becomes} \
      ~{detected_dot} \
      ~{barcoded_dot} \
      ~{null_dot} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    data_dot: "Required. "
    required_dot: "INDEX_FILE2=File"
    or: "sample1          ATAT|GAGG:CCAA|TGTG     spl1_1.txt.gz   spl1_2.txt.gz"
    provided_dot: "Indicates if both index barcodes encode redundant information i.e. if both barcodes are "
    distinct: "values can be given here using the syntax MM=X:Z where X and Z are 2 integers to use for "
    becomes: "'@D3FCO8P1:178:C1WLBACXX:7:1101:1836:1965:2:N:0:BARCODE'"
    detected_dot: "Default value: Standard. This option can be set to 'null' to clear the default value. "
    barcoded_dot: "N.B: this file will have a size of about one of the fastq input files.  Default value: "
    null_dot: "FORCE=Boolean                 Allows to overwrite existing files (system rights still apply).\\nDefault value: false. This option can be set to 'null' to clear the default value."
  }
  output {
    File out_stdout = stdout()
  }
}