version 1.0

task IgdiscoverClusterplot {
  input {
    Int? minimum_group_size
    String? gene
    String? type
    Int? size
    Boolean? ignore_j
    File? dpi
    Boolean? no_title
    String table
    Directory directory
  }
  command <<<
    igdiscover clusterplot \
      ~{table} \
      ~{directory} \
      ~{if defined(minimum_group_size) then ("--minimum-group-size " +  '"' + minimum_group_size + '"') else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if (ignore_j) then "--ignore-J" else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (no_title) then "--no-title" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimum_group_size: "Do not plot if there are less than N sequences for a\\ngene. Default: 200"
    gene: "Plot GENE. Can be given multiple times. Default: Plot\\nall genes."
    type: "Gene type. Default: V"
    size: "Show at most N sequences (with a matrix of size N x\\nN). Default: 300"
    ignore_j: "Include also rows without J assignment or J%SHM>0."
    dpi: "Resolution of output file. Default: 200"
    no_title: "Do not add a title to the plot"
    table: "Table with parsed and filtered IgBLAST results"
    directory: "Save clustermaps as PNG into this directory"
  }
  output {
    File out_stdout = stdout()
    File out_dpi = "${in_dpi}"
  }
}