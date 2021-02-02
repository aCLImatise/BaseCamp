version 1.0

task SmCounter2 {
  input {
    File? run_path
    File? bed_target
    File? bam_file
    File? out_prefix
    Int? n_cpu
    Int? min_bq
    Int? min_mq
    Int? hp_len
    Int? mismatch_thr
    String? primer_dist
    String? mt_threshold
    Int? rpb
    Int? primer_side
    Int? minal_tumi
    Int? maxalt_allele
    File? ref_genome
    File? rep_bed
    File? sr_bed
    Int? ds
    File? bam_type
    File? input_vcf
    String calculated
  }
  command <<<
    smCounter2 \
      ~{calculated} \
      ~{if defined(run_path) then ("--runPath " +  '"' + run_path + '"') else ""} \
      ~{if defined(bed_target) then ("--bedTarget " +  '"' + bed_target + '"') else ""} \
      ~{if defined(bam_file) then ("--bamFile " +  '"' + bam_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--outPrefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(n_cpu) then ("--nCPU " +  '"' + n_cpu + '"') else ""} \
      ~{if defined(min_bq) then ("--minBQ " +  '"' + min_bq + '"') else ""} \
      ~{if defined(min_mq) then ("--minMQ " +  '"' + min_mq + '"') else ""} \
      ~{if defined(hp_len) then ("--hpLen " +  '"' + hp_len + '"') else ""} \
      ~{if defined(mismatch_thr) then ("--mismatchThr " +  '"' + mismatch_thr + '"') else ""} \
      ~{if defined(primer_dist) then ("--primerDist " +  '"' + primer_dist + '"') else ""} \
      ~{if defined(mt_threshold) then ("--mtThreshold " +  '"' + mt_threshold + '"') else ""} \
      ~{if defined(rpb) then ("--rpb " +  '"' + rpb + '"') else ""} \
      ~{if defined(primer_side) then ("--primerSide " +  '"' + primer_side + '"') else ""} \
      ~{if defined(minal_tumi) then ("--minAltUMI " +  '"' + minal_tumi + '"') else ""} \
      ~{if defined(maxalt_allele) then ("--maxAltAllele " +  '"' + maxalt_allele + '"') else ""} \
      ~{if defined(ref_genome) then ("--refGenome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(rep_bed) then ("--repBed " +  '"' + rep_bed + '"') else ""} \
      ~{if defined(sr_bed) then ("--srBed " +  '"' + sr_bed + '"') else ""} \
      ~{if defined(ds) then ("--ds " +  '"' + ds + '"') else ""} \
      ~{if defined(bam_type) then ("--bamType " +  '"' + bam_type + '"') else ""} \
      ~{if defined(input_vcf) then ("--inputVCF " +  '"' + input_vcf + '"') else ""}
  >>>
  parameter_meta {
    run_path: "path to working directory"
    bed_target: "BED file"
    bam_file: "BAM file"
    out_prefix: "file name prefix"
    n_cpu: "number of CPU to use in parallel"
    min_bq: "minimum base quality allowed for analysis"
    min_mq: "minimum mapping quality allowed for analysis. If the\\nbam is tagged with its mate's mapq, then the minimum\\nof the R1 and R2 mapq will be used for comparison, if\\nnot each read is compared independently."
    hp_len: "minimum length for homopolymers"
    mismatch_thr: "average number of mismatches per 100 bases allowed"
    primer_dist: "filter variants that are within X bases to primer"
    mt_threshold: "threshold on read proportion to determine MT level\\nconsensus"
    rpb: "mean read pairs per UMI; default at 0 and will be"
    primer_side: "read end that includes the primer; default is 1"
    minal_tumi: "minimum requirement of ALT UMIs; default is 3"
    maxalt_allele: "maximum ALT alleles that meet minAltUMI to be\\nreported; default is 2 (tri-allelic variants)"
    ref_genome: "Path to the reference fasta file"
    rep_bed: "Path to the simpleRepeat bed file"
    sr_bed: "Path to the full repeat bed file"
    ds: "down sample if number of UMIs greater than this value\\n(RNA only)"
    bam_type: "raw (default): raw BAM file with UMIs; consensus:\\nconsensused BAM file"
    input_vcf: "optional input VCF file;"
    calculated: "--isRna               RNAseq varinat calling only; default is DNAseq"
  }
  output {
    File out_stdout = stdout()
  }
}