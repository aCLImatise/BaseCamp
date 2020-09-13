version 1.0

task ExtractPromoterRegionspy {
  input {
    String? out
    String? log
    String? log_level
    Array[String] distances
    Boolean? no_neighbours
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
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if (no_neighbours) then "--no-neighbours" else ""} \
      ~{if (gzip) then "--gzip" else ""}
  >>>
  parameter_meta {
    out: ""
    log: ""
    log_level: ""
    distances: ""
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