version 1.0

task FioInfo {
  input {
    String? layer
    Int? indent
    Boolean? count
    Boolean? format
    Boolean? crs
    Boolean? bounds
    Boolean? name
    String var_input
  }
  command <<<
    fio info \
      ~{var_input} \
      ~{if defined(layer) then ("--layer " +  '"' + layer + '"') else ""} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (crs) then "--crs" else ""} \
      ~{if (bounds) then "--bounds" else ""} \
      ~{if (name) then "--name" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    layer: "|NAME      Print information about a specific layer.  The first\\nlayer is used by default.  Layers use zero-based\\nnumbering when accessed by index."
    indent: "Indentation level for JSON output"
    count: "Print the count of features."
    format: "Print the format driver."
    crs: "Print the CRS as a PROJ.4 string."
    bounds: "Print the boundary coordinates (left, bottom, right,\\ntop)."
    name: "Print the datasource's name."
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}