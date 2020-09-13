version 1.0

task RgiBaitsAnnotation {
  input {
    File? index_file
  }
  command <<<
    rgi baits_annotation \
      ~{if defined(index_file) then ("--index_file " +  '"' + index_file + '"') else ""}
  >>>
  parameter_meta {
    index_file: "index file with baits information\\n"
  }
  output {
    File out_stdout = stdout()
  }
}