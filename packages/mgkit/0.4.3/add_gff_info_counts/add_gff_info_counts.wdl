version 1.0

task AddgffinfoCounts {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info counts \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-s, --samples TEXT      Sample names, in the same order as the count files\\n[required]\\n-c, --count-files TEXT  Count file(s)  [required]\\n-f, --fpkms             If the counts are FPKMS\\n-e, --featureCounts     If the counts files are from featureCounts\\n--progress              Shows Progress Bar\\n--help                  Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}