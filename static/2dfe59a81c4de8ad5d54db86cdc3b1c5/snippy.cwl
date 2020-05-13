class: CommandLineTool
id: snippy.cwl
inputs:
- id: citation
  doc: Print citation for referencing snippy
  type: boolean
  inputBinding:
    prefix: --citation
- id: check
  doc: Check dependences are installed then exit (default OFF)
  type: boolean
  inputBinding:
    prefix: --check
- id: force
  doc: Force overwrite of existing output folder (default OFF)
  type: boolean
  inputBinding:
    prefix: --force
- id: quiet
  doc: No screen output (default OFF)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: cpus
  doc: Maximum number of CPU cores to use (default '8')
  type: string
  inputBinding:
    prefix: --cpus
- id: ram
  doc: Try and keep RAM under this many GB (default '8')
  type: string
  inputBinding:
    prefix: --ram
- id: tmpdir
  doc: Fast temporary storage eg. local SSD (default '/tmp')
  type: string
  inputBinding:
    prefix: --tmpdir
- id: reference
  doc: Reference genome. Supports FASTA, GenBank, EMBL (not GFF) (default '')
  type: string
  inputBinding:
    prefix: --reference
- id: r1
  doc: Reads, paired-end R1 (left) (default '')
  type: string
  inputBinding:
    prefix: --R1
- id: r2
  doc: Reads, paired-end R2 (right) (default '')
  type: string
  inputBinding:
    prefix: --R2
- id: se
  doc: Single-end reads (default '')
  type: string
  inputBinding:
    prefix: --se
- id: ctg_s
  doc: Don't have reads use these contigs (default '')
  type: string
  inputBinding:
    prefix: --ctgs
- id: peil
  doc: Reads, paired-end R1/R2 interleaved (default '')
  type: string
  inputBinding:
    prefix: --peil
- id: bam
  doc: Use this BAM file instead of aligning reads (default '')
  type: string
  inputBinding:
    prefix: --bam
- id: targets
  doc: Only call SNPs from this BED file (default '')
  type: string
  inputBinding:
    prefix: --targets
- id: subsample
  doc: Subsample FASTQ to this proportion (default '1')
  type: string
  inputBinding:
    prefix: --subsample
- id: outdir
  doc: Output folder (default '')
  type: string
  inputBinding:
    prefix: --outdir
- id: prefix
  doc: Prefix for output files (default 'snps')
  type: string
  inputBinding:
    prefix: --prefix
- id: report
  doc: Produce report with visual alignment per variant (default OFF)
  type: boolean
  inputBinding:
    prefix: --report
- id: cleanup
  doc: Remove most files not needed for snippy-core (inc. BAMs!) (default OFF)
  type: boolean
  inputBinding:
    prefix: --cleanup
- id: rg_id
  doc: "Use this @RG ID: in the BAM header (default '')"
  type: string
  inputBinding:
    prefix: --rgid
- id: unmapped
  doc: Keep unmapped reads in BAM and write FASTQ (default OFF)
  type: boolean
  inputBinding:
    prefix: --unmapped
- id: map_qual
  doc: Minimum read mapping quality to consider (default '60')
  type: string
  inputBinding:
    prefix: --mapqual
- id: base_qual
  doc: Minimum base quality to consider (default '13')
  type: string
  inputBinding:
    prefix: --basequal
- id: min_cov
  doc: Minimum site depth to for calling alleles (default '10')
  type: string
  inputBinding:
    prefix: --mincov
- id: min_frac
  doc: Minumum proportion for variant evidence (0=AUTO) (default '0')
  type: string
  inputBinding:
    prefix: --minfrac
- id: min_qual
  doc: Minumum QUALITY in VCF column 6 (default '100')
  type: string
  inputBinding:
    prefix: --minqual
- id: max_soft
  doc: Maximum soft clipping to allow (default '10')
  type: string
  inputBinding:
    prefix: --maxsoft
- id: bwa_opt
  doc: Extra BWA MEM options, eg. -x pacbio (default '')
  type: string
  inputBinding:
    prefix: --bwaopt
- id: fb_opt
  doc: Extra Freebayes options, eg. --theta 1E-6 --read-snp-limit 2 (default '')
  type: string
  inputBinding:
    prefix: --fbopt
outputs: []
cwlVersion: v1.1
baseCommand:
- snippy
