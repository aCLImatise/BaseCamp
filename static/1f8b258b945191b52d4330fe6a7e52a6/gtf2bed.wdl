version 1.0

task Gtf2bed.pl {
  input {
    String input_gtf
    String? upstream_extension
    String? downstream_extension
  }
  command <<<
    gtf2bed.pl \
      ~{input_gtf} \
      ~{upstream_extension} \
      ~{downstream_extension}
  >>>
  parameter_meta {
    input_gtf: ""
    upstream_extension: ""
    downstream_extension: ""
  }
}