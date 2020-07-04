version 1.0

task Snippy {
  input {
    Boolean? citation
    Boolean? check
    Boolean? force
    Boolean? quiet
    String? cpus
    String? ram
    String? tmpdir
    String? reference
    String? r_one
    String? r_two
    String? se
    String? ctg_s
    String? peil
    String? bam
    String? targets
    String? subsample
    String? outdir
    String? prefix
    Boolean? report
    Boolean? cleanup
    String? rg_id
    Boolean? unmapped
    String? map_qual
    String? base_qual
    String? min_cov
    String? min_frac
    String? min_qual
    String? max_soft
    String? bwa_opt
    String? fb_opt
  }
  command <<<
    snippy \
      ~{true="--citation" false="" citation} \
      ~{true="--check" false="" check} \
      ~{true="--force" false="" force} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(ram) then ("--ram " +  '"' + ram + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(r_one) then ("--R1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("--R2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(se) then ("--se " +  '"' + se + '"') else ""} \
      ~{if defined(ctg_s) then ("--ctgs " +  '"' + ctg_s + '"') else ""} \
      ~{if defined(peil) then ("--peil " +  '"' + peil + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--report" false="" report} \
      ~{true="--cleanup" false="" cleanup} \
      ~{if defined(rg_id) then ("--rgid " +  '"' + rg_id + '"') else ""} \
      ~{true="--unmapped" false="" unmapped} \
      ~{if defined(map_qual) then ("--mapqual " +  '"' + map_qual + '"') else ""} \
      ~{if defined(base_qual) then ("--basequal " +  '"' + base_qual + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_frac) then ("--minfrac " +  '"' + min_frac + '"') else ""} \
      ~{if defined(min_qual) then ("--minqual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(max_soft) then ("--maxsoft " +  '"' + max_soft + '"') else ""} \
      ~{if defined(bwa_opt) then ("--bwaopt " +  '"' + bwa_opt + '"') else ""} \
      ~{if defined(fb_opt) then ("--fbopt " +  '"' + fb_opt + '"') else ""}
  >>>
  parameter_meta {
    citation: "Print citation for referencing snippy"
    check: "Check dependences are installed then exit (default OFF)"
    force: "Force overwrite of existing output folder (default OFF)"
    quiet: "No screen output (default OFF)"
    cpus: "Maximum number of CPU cores to use (default '8')"
    ram: "Try and keep RAM under this many GB (default '8')"
    tmpdir: "Fast temporary storage eg. local SSD (default '/tmp')"
    reference: "Reference genome. Supports FASTA, GenBank, EMBL (not GFF) (default '')"
    r_one: "Reads, paired-end R1 (left) (default '')"
    r_two: "Reads, paired-end R2 (right) (default '')"
    se: "Single-end reads (default '')"
    ctg_s: "Don't have reads use these contigs (default '')"
    peil: "Reads, paired-end R1/R2 interleaved (default '')"
    bam: "Use this BAM file instead of aligning reads (default '')"
    targets: "Only call SNPs from this BED file (default '')"
    subsample: "Subsample FASTQ to this proportion (default '1')"
    outdir: "Output folder (default '')"
    prefix: "Prefix for output files (default 'snps')"
    report: "Produce report with visual alignment per variant (default OFF)"
    cleanup: "Remove most files not needed for snippy-core (inc. BAMs!) (default OFF)"
    rg_id: "Use this @RG ID: in the BAM header (default '')"
    unmapped: "Keep unmapped reads in BAM and write FASTQ (default OFF)"
    map_qual: "Minimum read mapping quality to consider (default '60')"
    base_qual: "Minimum base quality to consider (default '13')"
    min_cov: "Minimum site depth to for calling alleles (default '10')"
    min_frac: "Minumum proportion for variant evidence (0=AUTO) (default '0')"
    min_qual: "Minumum QUALITY in VCF column 6 (default '100')"
    max_soft: "Maximum soft clipping to allow (default '10')"
    bwa_opt: "Extra BWA MEM options, eg. -x pacbio (default '')"
    fb_opt: "Extra Freebayes options, eg. --theta 1E-6 --read-snp-limit 2 (default '')"
  }
}