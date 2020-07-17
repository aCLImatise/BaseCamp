version 1.0

task EpicCluster {
  input {
    String? matrix
    String? outfile
    String? bed_file
    String? bigwig
    String? genome
    String? trunk_diff
    String? bin_size
    String? distance_allowed
    String? number_cores
  }
  command <<<
    epic-cluster \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(bed_file) then ("--bedfile " +  '"' + bed_file + '"') else ""} \
      ~{if defined(bigwig) then ("--bigwig " +  '"' + bigwig + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(trunk_diff) then ("--trunk-diff " +  '"' + trunk_diff + '"') else ""} \
      ~{if defined(bin_size) then ("--bin-size " +  '"' + bin_size + '"') else ""} \
      ~{if defined(distance_allowed) then ("--distance-allowed " +  '"' + distance_allowed + '"') else ""} \
      ~{if defined(number_cores) then ("--number-cores " +  '"' + number_cores + '"') else ""}
  >>>
  parameter_meta {
    matrix: "Matrix to run clustering algorithm on."
    outfile: "Where to store the cluster matrix."
    bed_file: "Where to store the bed file with info about each cluster."
    bigwig: "Where to store the bigwig file that displays the number of enriched experiments in each bin."
    genome: "Which genome the data is from (hg19, mm10 etc.). Only needed when --bigwig is used."
    trunk_diff: "The difference from the max an area needs to be not considered a trunk."
    bin_size: "The bin size used in the matrix file. Auto-inferred by default."
    distance_allowed: "The max distance allowed before two bins are considered to belong to a separate region. By default set to be the bin-size."
    number_cores: "Number of cpus to use. Can use at most one per chromosome. Default: 1."
  }
}