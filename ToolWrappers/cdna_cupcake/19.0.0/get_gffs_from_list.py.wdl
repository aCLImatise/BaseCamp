version 1.0

task GetGffsFromListpy {
  input {
    Boolean? partial
    String get
    String records
    String from
    String a
    String gff
    File var_file
    String list
  }
  command <<<
    get_gffs_from_list_py \
      ~{get} \
      ~{records} \
      ~{from} \
      ~{a} \
      ~{gff} \
      ~{var_file} \
      ~{list} \
      ~{if (partial) then "--partial" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    partial: ""
    get: ""
    records: ""
    from: ""
    a: ""
    gff: ""
    var_file: ""
    list: ""
  }
  output {
    File out_stdout = stdout()
  }
}