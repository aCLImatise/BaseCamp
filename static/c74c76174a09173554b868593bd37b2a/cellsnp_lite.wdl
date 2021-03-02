version 1.0

task Cellsnplite {
  input {
    File? sam_file
    File? sam_file_list
    Directory? outdir
    File? regions_vcf
    File? targets_vcf
    File? barcode_file
    File? sample_list
    String? sample_ids
    Boolean? genotype
    Boolean? gzip
    Boolean? print_skip_snps
    Int? nproc
    Int? chrom
    String? cell_tag
    String? umi_tag
    Int? min_count
    Float? min_maf
    Boolean? double_tgl
    Int? incl_flag
    Int? excl_flag
    Int? min_len
    Int? min_mapq
    Boolean? count_orphan
  }
  command <<<
    cellsnp_lite \
      ~{if defined(sam_file) then ("--samFile " +  '"' + sam_file + '"') else ""} \
      ~{if defined(sam_file_list) then ("--samFileList " +  '"' + sam_file_list + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(regions_vcf) then ("--regionsVCF " +  '"' + regions_vcf + '"') else ""} \
      ~{if defined(targets_vcf) then ("--targetsVCF " +  '"' + targets_vcf + '"') else ""} \
      ~{if defined(barcode_file) then ("--barcodeFile " +  '"' + barcode_file + '"') else ""} \
      ~{if defined(sample_list) then ("--sampleList " +  '"' + sample_list + '"') else ""} \
      ~{if defined(sample_ids) then ("--sampleIDs " +  '"' + sample_ids + '"') else ""} \
      ~{if (genotype) then "--genotype" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (print_skip_snps) then "--printSkipSNPs" else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(cell_tag) then ("--cellTAG " +  '"' + cell_tag + '"') else ""} \
      ~{if defined(umi_tag) then ("--UMItag " +  '"' + umi_tag + '"') else ""} \
      ~{if defined(min_count) then ("--minCOUNT " +  '"' + min_count + '"') else ""} \
      ~{if defined(min_maf) then ("--minMAF " +  '"' + min_maf + '"') else ""} \
      ~{if (double_tgl) then "--doubletGL" else ""} \
      ~{if defined(incl_flag) then ("--inclFLAG " +  '"' + incl_flag + '"') else ""} \
      ~{if defined(excl_flag) then ("--exclFLAG " +  '"' + excl_flag + '"') else ""} \
      ~{if defined(min_len) then ("--minLEN " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_mapq) then ("--minMAPQ " +  '"' + min_mapq + '"') else ""} \
      ~{if (count_orphan) then "--countORPHAN" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cellsnp-lite:1.2.0--hee625c5_0"
  }
  parameter_meta {
    sam_file: "Indexed sam/bam file(s), comma separated multiple samples.\\nMode 1&2: one sam/bam file with single cell.\\nMode 3: one or multiple bulk sam/bam files,\\nno barcodes needed, but sample ids and regionsVCF."
    sam_file_list: "A list file containing bam files, each per line, for Mode 3."
    outdir: "Output directory for VCF and sparse matrices."
    regions_vcf: "A vcf file listing all candidate SNPs, for fetch each variants.\\nIf None, pileup the genome. Needed for bulk samples."
    targets_vcf: "Similar as -R, but the next position is accessed by streaming rather\\nthan indexing/jumping (like -T in samtools/bcftools mpileup)."
    barcode_file: "A plain file listing all effective cell barcode."
    sample_list: "A list file containing sample IDs, each per line."
    sample_ids: "Comma separated sample ids."
    genotype: "If use, do genotyping in addition to counting."
    gzip: "If use, the output files will be zipped into BGZF format."
    print_skip_snps: "If use, the SNPs skipped when loading VCF will be printed."
    nproc: "Number of subprocesses [1]"
    chrom: "The chromosomes to use, comma separated [1 to 22]"
    cell_tag: "Tag for cell barcodes, turn off with None [CB]"
    umi_tag: "Tag for UMI: UR, Auto, None. For Auto mode, use UR if barcodes is inputted,\\notherwise use None. None mode means no UMI but read counts [Auto]"
    min_count: "Minimum aggragated count [20]"
    min_maf: "Minimum minor allele frequency [0.00]"
    double_tgl: "If use, keep doublet GT likelihood, i.e., GT=0.5 and GT=1.5."
    incl_flag: "|INT   Required flags: skip reads with all mask bits unset []"
    excl_flag: "|INT   Filter flags: skip reads with any mask bits set [UNMAP,SECONDARY,QCFAIL\\n(when use UMI) or UNMAP,SECONDARY,QCFAIL,DUP (otherwise)]"
    min_len: "Minimum mapped length for read filtering [30]"
    min_mapq: "Minimum MAPQ for read filtering [20]"
    count_orphan: "If use, do not skip anomalous read pairs."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}