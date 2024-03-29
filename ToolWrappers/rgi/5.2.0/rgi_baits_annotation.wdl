version 1.0

task RgiBaitsAnnotation {
  input {
    File? index_file
  }
  command <<<
    rgi baits_annotation \
      ~{if defined(index_file) then ("--index_file " +  '"' + index_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0"
  }
  parameter_meta {
    index_file: "index file with baits information\\n"
  }
  output {
    File out_stdout = stdout()
  }
}