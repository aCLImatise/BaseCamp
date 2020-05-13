class: CommandLineTool
id: iva_qc.cwl
inputs:
- id: embl_dir
  doc: Directory of reference EMBL files. If not used, must use --ref_db
  type: Directory
  inputBinding:
    prefix: --embl_dir
- id: ref_db
  doc: Directory of database made by iva_qc_make_db. If not used, must use --embl_dir
  type: Directory
  inputBinding:
    prefix: --ref_db
- id: f
  doc: '[.gz], --reads_fwd filename[.gz] Name of forwards reads fasta or fastq file.
    Must be used with --reads_rev'
  type: File
  inputBinding:
    prefix: -f
- id: r
  doc: '[.gz], --reads_rev filename[.gz] Name of reverse reads fasta or fastq file.
    Must be used with --reads_rev'
  type: File
  inputBinding:
    prefix: -r
- id: fr
  doc: '[.gz]    Name of interleaved fasta/q file'
  type: File
  inputBinding:
    prefix: --fr
- id: cds_min_hit_length
  doc: Minimum hit length when running nucmer of CDS sequences against contigs [30]
  type: long
  inputBinding:
    prefix: --cds_min_hit_length
- id: cds_min_hit_id
  doc: Minimum hit percent identity when running nucmer of CDS sequences against contigs
    [80]
  type: double
  inputBinding:
    prefix: --cds_min_hit_id
- id: ctg_min_hit_length
  doc: Minimum hit length when running nucmer of contigs against reference [100]
  type: long
  inputBinding:
    prefix: --ctg_min_hit_length
- id: ctg_min_hit_id
  doc: Minimum hit percent identity when running nucmer of contigs against reference
    [80]
  type: double
  inputBinding:
    prefix: --ctg_min_hit_id
- id: s_malt_k
  doc: kmer hash length in SMALT (the -k option in smalt index) [15]
  type: long
  inputBinding:
    prefix: --smalt_k
- id: s_malt_s
  doc: kmer hash step size in SMALT (the -s option in smalt index) [3]
  type: long
  inputBinding:
    prefix: --smalt_s
- id: s_malt_id
  doc: Minimum identity threshold for mapping to be reported (the -y option in smalt
    map) [0.5]
  type: double
  inputBinding:
    prefix: --smalt_id
- id: gage_mini_d
  doc: in [0,100] Minimum percent identity used when GAGE runs nucmer [80]
  type: long
  inputBinding:
    prefix: --gage_minid
- id: kraken_preload
  doc: Use the --preload option when running kraken
  type: boolean
  inputBinding:
    prefix: --kraken_preload
- id: ratt_config
  doc: Specify your own RATT config file [None]
  type: File
  inputBinding:
    prefix: --ratt_config
- id: ctg_layout_plot_title
  doc: Title to use in contig layout plot [IVA QC contig layout and read depth]
  type: string
  inputBinding:
    prefix: --ctg_layout_plot_title
- id: min_ref_cov
  doc: Minimum read coverage of the reference, on each strand, to count as OK coverage
    [5]
  type: long
  inputBinding:
    prefix: --min_ref_cov
- id: no_clean
  doc: Do not clean temporary files
  type: boolean
  inputBinding:
    prefix: --noclean
- id: threads
  doc: Number of threads to use [1]
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- iva_qc
