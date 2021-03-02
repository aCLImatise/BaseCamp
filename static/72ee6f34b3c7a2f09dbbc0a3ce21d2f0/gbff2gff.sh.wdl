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
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    gb_ff_file: ""
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}