version 1.0

task JeDemultiplex {
  input {
    Boolean? displays_options_specific
    String data_dot
    String or
    String while
    String duplicates_dot
    String sample_dot
    String distinct
    String detected_dot
    String barcoded_dot
    String null_dot
  }
  command <<<
    je demultiplex \
      ~{data_dot} \
      ~{or} \
      ~{while} \
      ~{duplicates_dot} \
      ~{sample_dot} \
      ~{distinct} \
      ~{detected_dot} \
      ~{barcoded_dot} \
      ~{null_dot} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    data_dot: "Required. "
    or: "sample1          ATAT|GAGG:CCAA|TGTG     spl1_1.txt.gz   spl1_2.txt.gz"
    while: "the second barcode might be a random barcode (UMI) to tell apart PCR artefacts from real "
    duplicates_dot: "Another example is when both barcodes should be used in a combined fashion to resolve the "
    sample_dot: "In the first example, you should use BPOS=BOTH BRED=false BM=READ_1."
    distinct: "values can be given here using the syntax MM=X:Z where X and Z are 2 integers to use for "
    detected_dot: "Default value: Standard. This option can be set to 'null' to clear the default value. "
    barcoded_dot: "N.B: this file will have a size of about one of the fastq input files.  Default value: "
    null_dot: "FORCE=Boolean                 Allows to overwrite existing files (system rights still apply).\\nDefault value: false. This option can be set to 'null' to clear the default value."
  }
  output {
    File out_stdout = stdout()
  }
}