version 1.0

task Starseqr.py {
  input {
    String? prefix
    String? fast_a
    String? gtf
    String? library
    String? threads
    String? bed_file
    String? subset_type
    String? as_type
    Boolean? keep_dups
    Boolean? keep_gene_dups
    Boolean? keep_mi_to
    Boolean? verbose
    String? fast_q_one
    String? fast_q_two
    String? star_index
    String? mode
    String? star_j_xns
    String? star_sam
    String? star_bam
  }
  command <<<
    starseqr.py \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(bed_file) then ("--bed_file " +  '"' + bed_file + '"') else ""} \
      ~{if defined(subset_type) then ("--subset_type " +  '"' + subset_type + '"') else ""} \
      ~{if defined(as_type) then ("--as_type " +  '"' + as_type + '"') else ""} \
      ~{true="--keep_dups" false="" keep_dups} \
      ~{true="--keep_gene_dups" false="" keep_gene_dups} \
      ~{true="--keep_mito" false="" keep_mi_to} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(fast_q_one) then ("--fastq1 " +  '"' + fast_q_one + '"') else ""} \
      ~{if defined(fast_q_two) then ("--fastq2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(star_index) then ("--star_index " +  '"' + star_index + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(star_j_xns) then ("--star_jxns " +  '"' + star_j_xns + '"') else ""} \
      ~{if defined(star_sam) then ("--star_sam " +  '"' + star_sam + '"') else ""} \
      ~{if defined(star_bam) then ("--star_bam " +  '"' + star_bam + '"') else ""}
  >>>
  parameter_meta {
    prefix: "prefix to name files. Can be string or /path/to/string"
    fast_a: "indexed fasta (.fa)"
    gtf: "gtf file. (.gtf)"
    library: "salmon library type(A, ISF, ISR, etc)"
    threads: "Number of threads to use for STAR and STAR-SEQR. 4-12 recommended."
    bed_file: "Bed file to subset analysis"
    subset_type: "allow fusions to pass with either one breakend in bed file or require both. Must use -b."
    as_type: "assembler to use"
    keep_dups: "keep read duplicates. Use for PCR data or with molecular tags"
    keep_gene_dups: "allow internal gene duplications to be considered"
    keep_mi_to: "allow RNA fusions to contain at least one breakpoint from Mitochondria"
    verbose: "verbose level... repeat up to three times."
    fast_q_one: "fastq.gz 1(.gz)"
    fast_q_two: "fastq.gz 2(.gz)"
    star_index: "path to STAR index folder"
    mode: "STAR alignment mode. 0=More-specific, 1=More-Sensitive"
    star_j_xns: "chimeric junctions file produced by STAR"
    star_sam: "Chimeric.out.sam file produced by STAR. Either use this or -sb"
    star_bam: "Aligned.sortedByCoord.out.bam file produced by STAR. Must contain chimeric reads with ch tag."
  }
}