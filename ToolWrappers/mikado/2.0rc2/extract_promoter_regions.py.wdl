version 1.0

task ExtractPromoterRegionspy {
  input {
    String? no_neighbours
    Boolean? gzip
    String genome
    String gene_list
    String genes_dot
  }
  command <<<
    extract_promoter_regions_py \
      ~{genome} \
      ~{gene_list} \
      ~{genes_dot} \
      ~{if defined(no_neighbours) then ("--no-neighbours " +  '"' + no_neighbours + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_neighbours: "Ignore the presence of neighbours when extracting"
    gzip: "Output will be compressed in GZip format."
    genome: "gff3"
    gene_list: "optional arguments:"
    genes_dot: "-eu, --exclude-utr"
  }
  output {
    File out_stdout = stdout()
  }
}