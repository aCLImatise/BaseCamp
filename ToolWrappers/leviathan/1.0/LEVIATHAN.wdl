version 1.0

task LEVIATHAN {
  input {
    Boolean? region_size
    Boolean? m_invariant_size
    Boolean? max_links
    Boolean? medium_size
    Boolean? large_size
    Boolean? small_rate
    Boolean? medium_rate
    Boolean? large_rate
    Boolean? duplicates
    Boolean? threads
    Boolean? pool_size
    Boolean? nb_bins
    Boolean? min_barcodes
    Boolean? candidates
    String? g
    String? i
    File? b
  }
  command <<<
    LEVIATHAN \
      ~{if (region_size) then "--regionSize" else ""} \
      ~{if (m_invariant_size) then "--minVariantSize" else ""} \
      ~{if (max_links) then "--maxLinks" else ""} \
      ~{if (medium_size) then "--mediumSize" else ""} \
      ~{if (large_size) then "--largeSize" else ""} \
      ~{if (small_rate) then "--smallRate" else ""} \
      ~{if (medium_rate) then "--mediumRate" else ""} \
      ~{if (large_rate) then "--largeRate" else ""} \
      ~{if (duplicates) then "--duplicates" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (pool_size) then "--poolSize" else ""} \
      ~{if (nb_bins) then "--nbBins" else ""} \
      ~{if (min_barcodes) then "--minBarcodes" else ""} \
      ~{if (candidates) then "--candidates" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/leviathan:1.0--h7d875b9_0"
  }
  parameter_meta {
    region_size: ":          Size of the regions on the reference genome to consider (default: 1000)"
    m_invariant_size: ":     Minimum size of the SVs to detect (default: same as regionSize)"
    max_links: ":           Remove from candidates list all candidates which have a region involved in that much candidates (default: 1000)"
    medium_size: ":         Minimum size of medium variants (default: 2000)"
    large_size: ":          Minimum size of large variants (default: 10000)"
    small_rate: ":          Percentile to chose as a threshold in the distribution of the number of shared barcodes for small variants (default: 99)"
    medium_rate: ":         Percentile to chose as a threshold in the distribution of the number of shared barcodes for medium variants (default: 99)"
    large_rate: ":          Percentile to chose as a threshold in the distribution of the number of shared barcodes for large variants (default: 99)"
    duplicates: ":         Consider SV as duplicates if they have the same type and if their breakpoints are within this distance (default: 10)"
    threads: ":            Number of threads (default: 8)"
    pool_size: ":           Size of the thread pool (default: 100000)"
    nb_bins: ":             Number of iterations to perform through the barcode index (default: 10)"
    min_barcodes: ":        Always remove candidates that share less than this number of barcodes (default: 1)"
    candidates: ":         File where to store valid SV candidates (default: \\\"candidates.bedpe\\\")"
    g: ""
    i: ""
    b: ""
  }
  output {
    File out_stdout = stdout()
  }
}