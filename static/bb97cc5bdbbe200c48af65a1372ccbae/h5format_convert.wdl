version 1.0

task H5formatConvert {
  input {
    Boolean? verbose
    String? d_name
    Boolean? noop
    String options
  }
  command <<<
    h5format_convert \
      ~{options} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(d_name) then ("--dname " +  '"' + d_name + '"') else ""} \
      ~{if (noop) then "--noop" else ""}
  >>>
  parameter_meta {
    verbose: "Turn on verbose mode"
    d_name: "Pathname for the dataset"
    noop: "Perform all the steps except the actual conversion"
    options: "-h, --help                Print a usage message and exit"
  }
  output {
    File out_stdout = stdout()
  }
}