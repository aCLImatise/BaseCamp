class: CommandLineTool
id: Sat_BSA.cwl
inputs:
- id: in_chromosome_name_selecting
  doc: ': Chromosome name for selecting the aligned reads.'
  type: string?
  inputBinding:
    prefix: -c
- id: in_start_position_selecting
  doc: ': Start position for selecting the aligned reads.'
  type: long?
  inputBinding:
    prefix: -s
- id: in_end_position_selecting
  doc: ': End position for selecting the aligned reads.'
  type: long?
  inputBinding:
    prefix: -e
- id: in_full_path_listing_bam_files
  doc: ': Full path of bam_list.txt listing bam files (Input format 1).'
  type: File?
  inputBinding:
    prefix: -b
- id: in_full_path_listing_fastagz_files
  doc: ': Full path of fa_list.txt listing fasta.gz files (Input format 2).'
  type: File?
  inputBinding:
    prefix: -f
- id: in_thread_number_default
  doc: ': Thread number. Default=[1]'
  type: long?
  inputBinding:
    prefix: -t
- id: in_full_path_canu
  doc: ': Full path of Canu.'
  type: File?
  inputBinding:
    prefix: -d
- id: in_genome_size_mb
  doc: ': Genome size in Mb set in Canu.'
  type: long?
  inputBinding:
    prefix: -g
- id: in_read_status_set
  doc: ': Read status set in Canu. Default=[-nanopore-raw].'
  type: string?
  inputBinding:
    prefix: -r
- id: in_mapping_quality_value
  doc: ': The mapping quality value excluded from analysis. Default=[0]'
  type: long?
  inputBinding:
    prefix: -q
- id: in_pb_used_sequence
  doc: 'or pb  : The used sequence reads type (Oxford Nanopore Technologies[ont] or
    PacBio[pb]).'
  type: string?
  inputBinding:
    prefix: -i
- id: in_defining_promoter_size
  doc: ': Defining promoter size applied for identifying SVs. Default=[0]'
  type: long?
  inputBinding:
    prefix: -p
- id: in_threshold_pvalue_fishers
  doc: ': Threshold for P-value from Fishers exact test. Default=[0.05]'
  type: long?
  inputBinding:
    prefix: -v
- id: in_w
  doc: ''
  type: string?
  inputBinding:
    prefix: -w
- id: in_required
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sat-bsa:1.12--0
cwlVersion: v1.1
baseCommand:
- Sat-BSA
