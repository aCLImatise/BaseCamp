version 1.0

task Gbff2gffsh {
  input {
    File gb_ff_file
    File gff_file
  }
  command <<<
    gbff2gff_sh \
      ~{gb_ff_file} \
      ~{gff_file}
  >>>
  parameter_meta {
    gb_ff_file: ""
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}