version 1.0

task SamToCollapsedGffpy {
  input {
    String convert
    String sam
    String to
    String collapsed
    String gff
    String format
    String sam_filename
  }
  command <<<
    sam_to_collapsed_gff_py \
      ~{convert} \
      ~{sam} \
      ~{to} \
      ~{collapsed} \
      ~{gff} \
      ~{format} \
      ~{sam_filename}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    convert: ""
    sam: ""
    to: ""
    collapsed: ""
    gff: ""
    format: ""
    sam_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}