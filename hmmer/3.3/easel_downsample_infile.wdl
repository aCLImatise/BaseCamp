version 1.0

task EaselDownsampleInfile {
  input {
    Boolean? options
    String easel
    String down_sample
    String m
    String in_file
  }
  command <<<
    easel downsample infile \
      ~{easel} \
      ~{down_sample} \
      ~{m} \
      ~{in_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    easel: ""
    down_sample: ""
    m: ""
    in_file: ""
  }
}