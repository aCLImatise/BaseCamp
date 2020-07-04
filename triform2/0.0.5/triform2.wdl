version 1.0

task Triform2 {
  input {
    Array[String] treatment
    Array[String] control
    String? number_cores
    String? genome
    String? bed_graph
    Int? max_p
    Int? min_shift
    Int? min_width
    String? read_width
    String? flank_distance
    Int? min_enrichment
  }
  command <<<
    triform2 \
      ~{if defined(treatment) then ("--treatment " +  '"' + treatment + '"') else ""} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(number_cores) then ("--number-cores " +  '"' + number_cores + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(bed_graph) then ("--bedgraph " +  '"' + bed_graph + '"') else ""} \
      ~{if defined(max_p) then ("--max-p " +  '"' + max_p + '"') else ""} \
      ~{if defined(min_shift) then ("--min-shift " +  '"' + min_shift + '"') else ""} \
      ~{if defined(min_width) then ("--min-width " +  '"' + min_width + '"') else ""} \
      ~{if defined(read_width) then ("--read-width " +  '"' + read_width + '"') else ""} \
      ~{if defined(flank_distance) then ("--flank-distance " +  '"' + flank_distance + '"') else ""} \
      ~{if defined(min_enrichment) then ("--min-enrichment " +  '"' + min_enrichment + '"') else ""}
  >>>
  parameter_meta {
    treatment: "Treatment (pull-down) file(s) in bam/bed/bed.gz/bed.bz2 format."
    control: "Control (input) file(s) in bam/bed/bed.gz/bed.bz2 format."
    number_cores: "Number of cpus to use. Can use at most one per chromosome. Default: 1."
    genome: "Genome version to use."
    bed_graph: "Path to write bedgraph file to, if desired."
    max_p: "Used to calculate minimum upper-tail z-value (default corresponds to standard normal p = 0.1)"
    min_shift: "Minimum inter-strand shift (lag) between peak coverage distributions (default 10 bp)."
    min_width: "Minimum number of bp (peak width) in peak-like region (default 10 bp)."
    read_width: "Read width w, symmetrically extended to a fixed value. Must be larger than the flank size. Default: 100 bp."
    flank_distance: "Fixed spacing between central and flanking locations (must be > w). Default: 150 bp."
    min_enrichment: "Minimum local enrichment ratio (default 3/8 quantile of the enrichment ratio)"
  }
}