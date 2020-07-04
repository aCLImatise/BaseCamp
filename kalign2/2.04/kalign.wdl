version 1.0

task Kalign {
  input {
    String k_align_two
    String? in_file
    String? outfile
  }
  command <<<
    kalign \
      ~{k_align_two} \
      ~{in_file} \
      ~{outfile}
  >>>
  parameter_meta {
    k_align_two: ""
    in_file: ""
    outfile: ""
  }
}