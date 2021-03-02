version 1.0

task FeatureBits {
  input {
    String? bed
    File? fa
    Boolean? fa_merge
    Int? minsize
    String? chrom
    Int? chrom_size
    Boolean? or
    Boolean? not
    Boolean? count_gaps
    Boolean? no_random
    Boolean? no_hap
    String? dots
    String? min_feature_size
    File? bin
    Int? binsize
    File? bin_overlap
    File? bed_region_in
    File? bed_region_out
    Boolean? enrichment
    String database
    String table
  }
  command <<<
    featureBits \
      ~{database} \
      ~{table} \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if defined(fa) then ("-fa " +  '"' + fa + '"') else ""} \
      ~{if (fa_merge) then "-faMerge" else ""} \
      ~{if defined(minsize) then ("-minSize " +  '"' + minsize + '"') else ""} \
      ~{if defined(chrom) then ("-chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(chrom_size) then ("-chromSize " +  '"' + chrom_size + '"') else ""} \
      ~{if (or) then "-or" else ""} \
      ~{if (not) then "-not" else ""} \
      ~{if (count_gaps) then "-countGaps" else ""} \
      ~{if (no_random) then "-noRandom" else ""} \
      ~{if (no_hap) then "-noHap" else ""} \
      ~{if defined(dots) then ("-dots " +  '"' + dots + '"') else ""} \
      ~{if defined(min_feature_size) then ("-minFeatureSize " +  '"' + min_feature_size + '"') else ""} \
      ~{if defined(bin) then ("-bin " +  '"' + bin + '"') else ""} \
      ~{if defined(binsize) then ("-binSize " +  '"' + binsize + '"') else ""} \
      ~{if defined(bin_overlap) then ("-binOverlap " +  '"' + bin_overlap + '"') else ""} \
      ~{if defined(bed_region_in) then ("-bedRegionIn " +  '"' + bed_region_in + '"') else ""} \
      ~{if defined(bed_region_out) then ("-bedRegionOut " +  '"' + bed_region_out + '"') else ""} \
      ~{if (enrichment) then "-enrichment" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "Put intersection into bed format. Can use stdout."
    fa: "Put sequence in intersection into .fa file"
    fa_merge: "For fa output merge overlapping features."
    minsize: "Minimum size to output (default 1)"
    chrom: "Restrict to one chromosome"
    chrom_size: "Read chrom sizes from file instead of database.\\n(chromInfo three column format)"
    or: "Or tables together instead of anding them"
    not: "Output negation of resulting bit set."
    count_gaps: "Count gaps in denominator"
    no_random: "Don't include _random (or Un) chromosomes"
    no_hap: "Don't include _hap|_alt chromosomes"
    dots: "Output dot every N chroms (scaffolds) processed"
    min_feature_size: "Don't include bits of the track that are smaller than\\nminFeatureSize, useful for differentiating between\\nalignment gaps and introns."
    bin: "Put bin counts in output file"
    binsize: "Bin size for generating counts in bin file (default 500000)"
    bin_overlap: "Bin overlap for generating counts in bin file (default 250000)"
    bed_region_in: "Read in a bed file for bin counts in specific regions\\nand write to bedRegionsOut"
    bed_region_out: "Write a bed file of bin counts in specific regions\\nfrom bedRegionIn"
    enrichment: "Calculates coverage and enrichment assuming first table\\nis reference gene track and second track something else\\nEnrichment is the amount of table1 that covers table2 vs. the\\namount of table1 that covers the genome. It's how much denser\\ntable1 is in table2 than it is genome-wide."
    database: ""
    table: ""
  }
  output {
    File out_stdout = stdout()
    File out_bin = "${in_bin}"
  }
}