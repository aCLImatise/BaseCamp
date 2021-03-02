version 1.0

task ClusteringDistanceMatrixR {
  input {
    File? distance_matrix_tsv
    Directory? output_directory
    Int? cut_off_values
    Boolean? header
    Boolean? tsv
    Boolean? force
  }
  command <<<
    Clustering_DistanceMatrix_R \
      ~{if defined(distance_matrix_tsv) then ("--input " +  '"' + distance_matrix_tsv + '"') else ""} \
      ~{if defined(output_directory) then ("--outputdirectory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(cut_off_values) then ("--cutoff_values " +  '"' + cut_off_values + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (tsv) then "--tsv" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chewiesnake:3.0.0--1"
  }
  parameter_meta {
    distance_matrix_tsv: "Distance matrix (tsv) Input file (required)"
    output_directory: "Output directory (optional, default is the same as the input directory)."
    cut_off_values: "A comma separated set of cutoff values (Default: 5,10,20,50,100,200,1000)"
    header: "TRUE or FALSE (the default). When true, the first line in the distance matrix is the header"
    tsv: "TRUE or FALSE (the default). When true, the distance matrix is tab seperated (else space seperated)"
    force: "TRUE or FALSE (the default). When true, existing output files will be overwritten\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}