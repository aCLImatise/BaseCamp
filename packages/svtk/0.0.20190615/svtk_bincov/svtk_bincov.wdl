version 1.0

task SvtkBincov {
  input {
    File? norm_out
    Int? binsize
    String? mode
    File? blacklist
    Boolean? gzip
    Boolean? pre_subset_ted
    Float? overlap
    Boolean? old_bt
    String bam
    String chr
    String cov_out
  }
  command <<<
    svtk bincov \
      ~{bam} \
      ~{chr} \
      ~{cov_out} \
      ~{if defined(norm_out) then ("--norm_out " +  '"' + norm_out + '"') else ""} \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (pre_subset_ted) then "--presubsetted" else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if (old_bt) then "--oldBT" else ""}
  >>>
  parameter_meta {
    norm_out: "Output bed file of normalized coverage"
    binsize: "Bin size (bp) [1000]"
    mode: "Type of coverage to calculate [nucleotide]"
    blacklist: "BED file of regions to exclude"
    gzip: "Compress output bed files"
    pre_subset_ted: "Input bam is already subsetted to desired chr"
    overlap: "Maximum fraction of each bin permitted to overlap with\\nblacklist regions. [0.05]"
    old_bt: "Using a bedtools version pre-2.24.0"
    bam: "Input bam"
    chr: "Contig to evaluate"
    cov_out: "Output bed file of raw coverage"
  }
  output {
    File out_stdout = stdout()
    File out_norm_out = "${in_norm_out}"
  }
}