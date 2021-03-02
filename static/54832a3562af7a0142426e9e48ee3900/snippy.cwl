class: CommandLineTool
id: snippy.cwl
inputs:
- id: in_citation
  doc: Print citation for referencing snippy
  type: boolean?
  inputBinding:
    prefix: --citation
- id: in_check
  doc: Check dependences are installed then exit (default OFF)
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_force
  doc: Force overwrite of existing output folder (default OFF)
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_quiet
  doc: No screen output (default OFF)
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_cpus
  doc: Maximum number of CPU cores to use (default '8')
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_ram
  doc: Try and keep RAM under this many GB (default '8')
  type: long?
  inputBinding:
    prefix: --ram
- id: in_tmpdir
  doc: Fast temporary storage eg. local SSD (default '/tmp')
  type: string?
  inputBinding:
    prefix: --tmpdir
- id: in_reference
  doc: Reference genome. Supports FASTA, GenBank, EMBL (not GFF) (default '')
  type: string?
  inputBinding:
    prefix: --reference
- id: in_r_one
  doc: Reads, paired-end R1 (left) (default '')
  type: long?
  inputBinding:
    prefix: --R1
- id: in_r_two
  doc: Reads, paired-end R2 (right) (default '')
  type: long?
  inputBinding:
    prefix: --R2
- id: in_se
  doc: Single-end reads (default '')
  type: string?
  inputBinding:
    prefix: --se
- id: in_ctg_s
  doc: Don't have reads use these contigs (default '')
  type: string?
  inputBinding:
    prefix: --ctgs
- id: in_peil
  doc: Reads, paired-end R1/R2 interleaved (default '')
  type: long?
  inputBinding:
    prefix: --peil
- id: in_bam
  doc: Use this BAM file instead of aligning reads (default '')
  type: File?
  inputBinding:
    prefix: --bam
- id: in_targets
  doc: Only call SNPs from this BED file (default '')
  type: File?
  inputBinding:
    prefix: --targets
- id: in_subsample
  doc: Subsample FASTQ to this proportion (default '1')
  type: long?
  inputBinding:
    prefix: --subsample
- id: in_outdir
  doc: Output folder (default '')
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: Prefix for output files (default 'snps')
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_report
  doc: Produce report with visual alignment per variant (default OFF)
  type: boolean?
  inputBinding:
    prefix: --report
- id: in_cleanup
  doc: Remove most files not needed for snippy-core (inc. BAMs!) (default OFF)
  type: boolean?
  inputBinding:
    prefix: --cleanup
- id: in_rg_id
  doc: "Use this @RG ID: in the BAM header (default '')"
  type: string?
  inputBinding:
    prefix: --rgid
- id: in_unmapped
  doc: Keep unmapped reads in BAM and write FASTQ (default OFF)
  type: boolean?
  inputBinding:
    prefix: --unmapped
- id: in_map_qual
  doc: Minimum read mapping quality to consider (default '60')
  type: long?
  inputBinding:
    prefix: --mapqual
- id: in_base_qual
  doc: Minimum base quality to consider (default '13')
  type: long?
  inputBinding:
    prefix: --basequal
- id: in_min_cov
  doc: Minimum site depth to for calling alleles (default '10')
  type: long?
  inputBinding:
    prefix: --mincov
- id: in_min_frac
  doc: Minumum proportion for variant evidence (0=AUTO) (default '0')
  type: long?
  inputBinding:
    prefix: --minfrac
- id: in_min_qual
  doc: Minumum QUALITY in VCF column 6 (default '100')
  type: long?
  inputBinding:
    prefix: --minqual
- id: in_max_soft
  doc: Maximum soft clipping to allow (default '10')
  type: long?
  inputBinding:
    prefix: --maxsoft
- id: in_bwa_opt
  doc: Extra BWA MEM options, eg. -x pacbio (default '')
  type: string?
  inputBinding:
    prefix: --bwaopt
- id: in_fb_opt
  doc: Extra Freebayes options, eg. --theta 1E-6 --read-snp-limit 2 (default '')
  type: double?
  inputBinding:
    prefix: --fbopt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: Force overwrite of existing output folder (default OFF)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
- id: out_outdir
  doc: Output folder (default '')
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- snippy
