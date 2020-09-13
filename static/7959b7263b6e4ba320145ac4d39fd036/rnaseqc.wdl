version 1.0

task Rnaseqc {
  input {
    Boolean? name_current_sample
    Boolean? bed
    Boolean? fast_a
    Boolean? chimeric_distance
    Boolean? fragment_samples
    Boolean? q
    Boolean? mapping_quality
    Boolean? base_mismatch
    Boolean? offset
    Boolean? window_size
    Boolean? gene_length
    Boolean? legacy
    Boolean? stranded
    Boolean? verbose
    Boolean? filter_reads_specified
    Boolean? chimeric_tag
    Boolean? exclude_chimeric
    Boolean? rp_km
    Boolean? coverage
    Boolean? coverage_mask
    Boolean? d
    Boolean? detection_threshold
    String gtf
    String bam
    String output_directory
    String counts
  }
  command <<<
    rnaseqc \
      ~{gtf} \
      ~{bam} \
      ~{output_directory} \
      ~{counts} \
      ~{if (name_current_sample) then "-s" else ""} \
      ~{if (bed) then "--bed" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (chimeric_distance) then "--chimeric-distance" else ""} \
      ~{if (fragment_samples) then "--fragment-samples" else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if (mapping_quality) then "--mapping-quality" else ""} \
      ~{if (base_mismatch) then "--base-mismatch" else ""} \
      ~{if (offset) then "--offset" else ""} \
      ~{if (window_size) then "--window-size" else ""} \
      ~{if (gene_length) then "--gene-length" else ""} \
      ~{if (legacy) then "--legacy" else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (filter_reads_specified) then "-t" else ""} \
      ~{if (chimeric_tag) then "--chimeric-tag" else ""} \
      ~{if (exclude_chimeric) then "--exclude-chimeric" else ""} \
      ~{if (rp_km) then "--rpkm" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if (coverage_mask) then "--coverage-mask" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (detection_threshold) then "--detection-threshold" else ""}
  >>>
  parameter_meta {
    name_current_sample: "[sample], --sample=[sample]     The name of the current sample. Default:\\nThe bam's filename"
    bed: "=[BEDFILE]                   Optional input BED file containing\\nnon-overlapping exons used for fragment\\nsize calculations"
    fast_a: "=[fasta]                   Optional input FASTA/FASTQ file\\ncontaining the reference sequence used\\nfor parsing CRAM files"
    chimeric_distance: "=[DISTANCE]    Set the maximum accepted distance\\nbetween read mates. Mates beyond this\\ndistance will be counted as chimeric\\npairs. Default: 2000000 [bp]"
    fragment_samples: "=[SAMPLES]      Set the number of samples to take when\\ncomputing fragment sizes. Requires the\\n--bed argument. Default: 1000000"
    q: "[QUALITY],"
    mapping_quality: "=[QUALITY]       Set the lower bound on read quality for\\nexon coverage counting. Reads below this\\nnumber are excluded from coverage\\nmetrics. Default: 255"
    base_mismatch: "=[MISMATCHES]      Set the maximum number of allowed\\nmismatches between a read and the\\nreference sequence. Reads with more than\\nthis number of mismatches are excluded\\nfrom coverage metrics. Default: 6"
    offset: "=[OFFSET]                 Set the offset into the gene for the 3'\\nand 5' windows in bias calculation. A\\npositive value shifts the 3' and 5'\\nwindows towards eachother, while a\\nnegative value shifts them apart.\\nDefault: 150 [bp]"
    window_size: "=[SIZE]              Set the size of the 3' and 5' windows in\\nbias calculation. Default: 100 [bp]"
    gene_length: "=[LENGTH]            Set the minimum size of a gene for bias\\ncalculation. Genes below this size are\\nignored in the calculation. Default: 600\\n[bp]"
    legacy: "Use legacy counting rules. Gene and exon\\ncounts match output of RNA-SeQC 1.1.9"
    stranded: "=[stranded]             Use strand-specific metrics. Only\\nfeatures on the same strand of a read\\nwill be considered. Allowed values are\\n'RF', 'rf', 'FR', and 'fr'"
    verbose: "Give some feedback about what's going\\non. Supply this argument twice for\\nprogress updates while parsing the bam"
    filter_reads_specified: "[TAG...], --tag=[TAG...]        Filter out reads with the specified tag."
    chimeric_tag: "=[TAG]              Reads maked with the specified tag will\\nbe labeled as Chimeric. Defaults to 'mC'\\nfor STAR"
    exclude_chimeric: "Exclude chimeric reads from the read"
    rp_km: "Output gene RPKM values instead of TPMs"
    coverage: "If this flag is provided, coverage\\nstatistics for each transcript will be\\nwritten to a table. Otherwise, only\\nsummary coverage statistics are\\ngenerated and added to the metrics table"
    coverage_mask: "=[SIZE]            Sets how many bases at both ends of a\\ntranscript are masked out when computing\\nper-base exon coverage. Default: 500bp"
    d: "[threshold],"
    detection_threshold: "=[threshold] Number of counts on a gene to consider\\nthe gene 'detected'. Additionally, genes\\nbelow this limit are excluded from 3'\\nbias computation. Default: 5 reads"
    gtf: "The input GTF file containing features\\nto check the bam against"
    bam: "The input SAM/BAM file containing reads\\nto process"
    output_directory: "Output directory"
    counts: "-u, --unpaired                    Allow unpaired reads to be quantified."
  }
  output {
    File out_stdout = stdout()
  }
}