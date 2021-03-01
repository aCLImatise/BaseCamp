class: CommandLineTool
id: cellsnp_lite.cwl
inputs:
- id: in_sam_file
  doc: "Indexed sam/bam file(s), comma separated multiple samples.\nMode 1&2: one\
    \ sam/bam file with single cell.\nMode 3: one or multiple bulk sam/bam files,\n\
    no barcodes needed, but sample ids and regionsVCF."
  type: File?
  inputBinding:
    prefix: --samFile
- id: in_sam_file_list
  doc: A list file containing bam files, each per line, for Mode 3.
  type: File?
  inputBinding:
    prefix: --samFileList
- id: in_outdir
  doc: Output directory for VCF and sparse matrices.
  type: Directory?
  inputBinding:
    prefix: --outDir
- id: in_regions_vcf
  doc: "A vcf file listing all candidate SNPs, for fetch each variants.\nIf None,\
    \ pileup the genome. Needed for bulk samples."
  type: File?
  inputBinding:
    prefix: --regionsVCF
- id: in_targets_vcf
  doc: "Similar as -R, but the next position is accessed by streaming rather\nthan\
    \ indexing/jumping (like -T in samtools/bcftools mpileup)."
  type: File?
  inputBinding:
    prefix: --targetsVCF
- id: in_barcode_file
  doc: A plain file listing all effective cell barcode.
  type: File?
  inputBinding:
    prefix: --barcodeFile
- id: in_sample_list
  doc: A list file containing sample IDs, each per line.
  type: File?
  inputBinding:
    prefix: --sampleList
- id: in_sample_ids
  doc: Comma separated sample ids.
  type: string?
  inputBinding:
    prefix: --sampleIDs
- id: in_genotype
  doc: If use, do genotyping in addition to counting.
  type: boolean?
  inputBinding:
    prefix: --genotype
- id: in_gzip
  doc: If use, the output files will be zipped into BGZF format.
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_print_skip_snps
  doc: If use, the SNPs skipped when loading VCF will be printed.
  type: boolean?
  inputBinding:
    prefix: --printSkipSNPs
- id: in_nproc
  doc: Number of subprocesses [1]
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_chrom
  doc: The chromosomes to use, comma separated [1 to 22]
  type: long?
  inputBinding:
    prefix: --chrom
- id: in_cell_tag
  doc: Tag for cell barcodes, turn off with None [CB]
  type: string?
  inputBinding:
    prefix: --cellTAG
- id: in_umi_tag
  doc: "Tag for UMI: UR, Auto, None. For Auto mode, use UR if barcodes is inputted,\n\
    otherwise use None. None mode means no UMI but read counts [Auto]"
  type: string?
  inputBinding:
    prefix: --UMItag
- id: in_min_count
  doc: Minimum aggragated count [20]
  type: long?
  inputBinding:
    prefix: --minCOUNT
- id: in_min_maf
  doc: Minimum minor allele frequency [0.00]
  type: double?
  inputBinding:
    prefix: --minMAF
- id: in_double_tgl
  doc: If use, keep doublet GT likelihood, i.e., GT=0.5 and GT=1.5.
  type: boolean?
  inputBinding:
    prefix: --doubletGL
- id: in_incl_flag
  doc: '|INT   Required flags: skip reads with all mask bits unset []'
  type: long?
  inputBinding:
    prefix: --inclFLAG
- id: in_excl_flag
  doc: "|INT   Filter flags: skip reads with any mask bits set [UNMAP,SECONDARY,QCFAIL\n\
    (when use UMI) or UNMAP,SECONDARY,QCFAIL,DUP (otherwise)]"
  type: long?
  inputBinding:
    prefix: --exclFLAG
- id: in_min_len
  doc: Minimum mapped length for read filtering [30]
  type: long?
  inputBinding:
    prefix: --minLEN
- id: in_min_mapq
  doc: Minimum MAPQ for read filtering [20]
  type: long?
  inputBinding:
    prefix: --minMAPQ
- id: in_count_orphan
  doc: If use, do not skip anomalous read pairs.
  type: boolean?
  inputBinding:
    prefix: --countORPHAN
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory for VCF and sparse matrices.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cellsnp-lite:1.2.0--hee625c5_0
cwlVersion: v1.1
baseCommand:
- cellsnp-lite
