version 1.0

task Chopify.pl {
  input {
    String peak_slash_bed_file
  }
  command <<<
    chopify.pl \
      ~{peak_slash_bed_file}
  >>>
  parameter_meta {
    peak_slash_bed_file: ""
  }
}