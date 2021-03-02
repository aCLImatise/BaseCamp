version 1.0

task Metatree {
  input {
    String batch_file
    String out_dir
    String taxonomy_file
    String out_group
    String cpus
  }
  command <<<
    metatree \
      ~{batch_file} \
      ~{out_dir} \
      ~{taxonomy_file} \
      ~{out_group} \
      ~{cpus}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metatree:0.0.1--py_0"
  }
  parameter_meta {
    batch_file: "First tree must be the reference tree, format:\\nid<tab>path_to_tree"
    out_dir: "path to the output directory"
    taxonomy_file: "path to taxonomy file, format: gid<tab>taxonomy"
    out_group: "outgroup for rooting"
    cpus: "number of CPUs to use"
  }
  output {
    File out_stdout = stdout()
  }
}