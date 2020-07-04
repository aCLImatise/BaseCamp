version 1.0

task Gbff2gff.sh {
  input {
    String gb_ff_file
    String gff_file
  }
  command <<<
    gbff2gff.sh \
      ~{gb_ff_file} \
      ~{gff_file}
  >>>
  parameter_meta {
    gb_ff_file: ""
    gff_file: ""
  }
}