class: CommandLineTool
id: iva_qc.cwl
inputs:
- id: in_embl_dir
  doc: "Directory of reference EMBL files. If not used, must\nuse --ref_db"
  type: Directory?
  inputBinding:
    prefix: --embl_dir
- id: in_ref_db
  doc: "Directory of database made by iva_qc_make_db. If not\nused, must use --embl_dir"
  type: Directory?
  inputBinding:
    prefix: --ref_db
- id: in_name_forwards_reads
  doc: "[.gz], --reads_fwd filename[.gz]\nName of forwards reads fasta or fastq file.\
    \ Must be\nused with --reads_rev"
  type: File?
  inputBinding:
    prefix: -f
- id: in_name_reverse_reads
  doc: "[.gz], --reads_rev filename[.gz]\nName of reverse reads fasta or fastq file.\
    \ Must be\nused with --reads_rev"
  type: File?
  inputBinding:
    prefix: -r
- id: in_fr
  doc: '[.gz]    Name of interleaved fasta/q file'
  type: File?
  inputBinding:
    prefix: --fr
- id: in_cds_min_hit_length
  doc: "Minimum hit length when running nucmer of CDS\nsequences against contigs [30]"
  type: long?
  inputBinding:
    prefix: --cds_min_hit_length
- id: in_cds_min_hit_id
  doc: "Minimum hit percent identity when running nucmer of\nCDS sequences against\
    \ contigs [80]"
  type: double?
  inputBinding:
    prefix: --cds_min_hit_id
- id: in_ctg_min_hit_length
  doc: "Minimum hit length when running nucmer of contigs\nagainst reference [100]"
  type: long?
  inputBinding:
    prefix: --ctg_min_hit_length
- id: in_ctg_min_hit_id
  doc: "Minimum hit percent identity when running nucmer of\ncontigs against reference\
    \ [80]"
  type: double?
  inputBinding:
    prefix: --ctg_min_hit_id
- id: in_s_malt_k
  doc: "kmer hash length in SMALT (the -k option in smalt\nindex) [15]"
  type: long?
  inputBinding:
    prefix: --smalt_k
- id: in_s_malt_s
  doc: "kmer hash step size in SMALT (the -s option in smalt\nindex) [3]"
  type: long?
  inputBinding:
    prefix: --smalt_s
- id: in_s_malt_id
  doc: "Minimum identity threshold for mapping to be reported\n(the -y option in smalt\
    \ map) [0.5]"
  type: double?
  inputBinding:
    prefix: --smalt_id
- id: in_gage_mini_d
  doc: "in [0,100]\nMinimum percent identity used when GAGE runs nucmer\n[80]"
  type: long?
  inputBinding:
    prefix: --gage_minid
- id: in_kraken_preload
  doc: Use the --preload option when running kraken
  type: boolean?
  inputBinding:
    prefix: --kraken_preload
- id: in_ratt_config
  doc: Specify your own RATT config file [None]
  type: File?
  inputBinding:
    prefix: --ratt_config
- id: in_ctg_layout_plot_title
  doc: "Title to use in contig layout plot [IVA QC contig\nlayout and read depth]"
  type: string?
  inputBinding:
    prefix: --ctg_layout_plot_title
- id: in_min_ref_cov
  doc: "Minimum read coverage of the reference, on each\nstrand, to count as OK coverage\
    \ [5]"
  type: long?
  inputBinding:
    prefix: --min_ref_cov
- id: in_no_clean
  doc: Do not clean temporary files
  type: boolean?
  inputBinding:
    prefix: --noclean
- id: in_threads
  doc: Number of threads to use [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_assembly_dot_fast_a
  doc: Name of assembly fasta file to be compared to
  type: string
  inputBinding:
    position: 0
- id: in_reference
  doc: prefix of output files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iva_qc
