version 1.0

task Starseqrpy {
  input {
    File? prefix
    String? fast_a
    File? gtf
    String? library
    Int? threads
    File? bed_file
    String? subset_type
    String? as_type
    Boolean? keep_dups
    Boolean? keep_gene_dups
    Boolean? keep_mi_to
    Boolean? verbose
    File? star_index
    String? mode
    File? star_j_xns
    File? star_sam
    File? star_bam
    Int? two
    Int? one
  }
  command <<<
    starseqr_py \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(bed_file) then ("--bed_file " +  '"' + bed_file + '"') else ""} \
      ~{if defined(subset_type) then ("--subset_type " +  '"' + subset_type + '"') else ""} \
      ~{if defined(as_type) then ("--as_type " +  '"' + as_type + '"') else ""} \
      ~{if (keep_dups) then "--keep_dups" else ""} \
      ~{if (keep_gene_dups) then "--keep_gene_dups" else ""} \
      ~{if (keep_mi_to) then "--keep_mito" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(star_index) then ("--star_index " +  '"' + star_index + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(star_j_xns) then ("--star_jxns " +  '"' + star_j_xns + '"') else ""} \
      ~{if defined(star_sam) then ("--star_sam " +  '"' + star_sam + '"') else ""} \
      ~{if defined(star_bam) then ("--star_bam " +  '"' + star_bam + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: "prefix to name files. Can be string or /path/to/string"
    fast_a: "indexed fasta (.fa)"
    gtf: "gtf file. (.gtf)"
    library: "salmon library type(A, ISF, ISR, etc)"
    threads: "Number of threads to use for STAR and STAR-SEQR. 4-12\\nrecommended."
    bed_file: "Bed file to subset analysis"
    subset_type: "allow fusions to pass with either one breakend in bed\\nfile or require both. Must use -b."
    as_type: "assembler to use"
    keep_dups: "keep read duplicates. Use for PCR data or with\\nmolecular tags"
    keep_gene_dups: "allow internal gene duplications to be considered"
    keep_mi_to: "allow RNA fusions to contain at least one breakpoint\\nfrom Mitochondria"
    verbose: "verbose level... repeat up to three times."
    star_index: "path to STAR index folder"
    mode: "STAR alignment mode. 0=More-specific, 1=More-Sensitive"
    star_j_xns: "chimeric junctions file produced by STAR"
    star_sam: "Chimeric.out.sam file produced by STAR. Either use\\nthis or -sb"
    star_bam: "Aligned.sortedByCoord.out.bam file produced by STAR.\\nMust contain chimeric reads with ch tag.\\n"
    two: ""
    one: ""
  }
  output {
    File out_stdout = stdout()
    File out_star_sam = "${in_star_sam}"
    File out_star_bam = "${in_star_bam}"
  }
}