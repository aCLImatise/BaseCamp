version 1.0

task SegmentationfoldutilsAddreadcounts {
  input {
    File? regex
    String dbn_input_file
  }
  command <<<
    segmentation_fold_utils add_read_counts \
      ~{dbn_input_file} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    regex: "Regex to capture the targeted location in DBN file\\n(default: '>.*?(chr[^:]):([0-9]+)-([0-9]+)' )"
    dbn_input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}