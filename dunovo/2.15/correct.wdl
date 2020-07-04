version 1.0

task Correct.py {
  input {
    Boolean? debug
    Boolean? phone_home
    Boolean? galaxy
    Boolean? test
    String families
    String reads
    String sam
  }
  command <<<
    correct.py \
      ~{families} \
      ~{reads} \
      ~{sam} \
      ~{true="--debug" false="" debug} \
      ~{true="--phone-home" false="" phone_home} \
      ~{true="--galaxy" false="" galaxy} \
      ~{true="--test" false="" test}
  >>>
  parameter_meta {
    debug: "Print debug messages (very verbose)."
    phone_home: "Report helpful usage data to the developer, to better understand the use cases and performance of the tool. The only data which will be recorded is the name and version of the tool, the size of the input data, the time and memory taken to process it, and the IP address of the machine running it. Also, if the script fails, it will report the name of the exception thrown and the line of code it occurred in. No parameters or filenames are sent. All the reporting and recording code is available at https://github.com/NickSto/ET."
    galaxy: "Tell the script it's running on Galaxy. Currently this only affects data reported when phoning home."
    test: "If reporting usage data, mark this as a test run."
    families: "The sorted output of make-barcodes.awk. The important part is that it's a tab-delimited file with at least 2 columns: the barcode sequence and order, and it must be sorted in the same order as the \"reads\" in the SAM file."
    reads: "The fasta/q file given to the aligner. Used to get barcode sequences from read names."
    sam: "Barcode alignment, in SAM format. Omit to read from stdin. The read names must be integers, representing the (1-based) order they appear in the families file."
  }
}