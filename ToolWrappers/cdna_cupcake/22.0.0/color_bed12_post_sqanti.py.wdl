version 1.0

task ColorBed12PostSqantipy {
  input {
    Boolean? ok_to_ignore
    String class_filename
    Int be_done_two_filename
    String output_prefix
  }
  command <<<
    color_bed12_post_sqanti_py \
      ~{class_filename} \
      ~{be_done_two_filename} \
      ~{output_prefix} \
      ~{if (ok_to_ignore) then "--ok_to_ignore" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    ok_to_ignore: "OK to ignore entries missing in bed file (default: off)"
    class_filename: "SQANTI(3) classification filename"
    be_done_two_filename: "Input BED12 filename (converted from same SQANTI3 input GTF)"
    output_prefix: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}