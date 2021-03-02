class: CommandLineTool
id: IRFinder.cwl
inputs:
- id: in_version_number_current
  doc: version number of current IRFinder.
  type: long?
  inputBinding:
    prefix: -v
- id: in_this_usage_information
  doc: this usage information.
  type: string?
  inputBinding:
    prefix: -h
- id: in_fastq_default_quantifies
  doc: "FastQ (default. Quantifies intron retention from FASTQ file);\nBAM (quantifies\
    \ intron retention from a name-sorted BAM file);\nBuildRef (builds IRFinder reference\
    \ from Ensembl FTP site. Requires Internet),\nBuildRefDownload (only downloads\
    \ FASTA and GTF files from Ensembl FTP site, without building IRFinder reference.\
    \ Requires Internet),\nBuildRefProcess (builds IRFinder reference from local FASTA\
    \ and GTF files),\nBuildRefFromSTARRef (builds IRFinder reference from a local\
    \ STAR reference)."
  type: File?
  inputBinding:
    prefix: -m
- id: in_directory_yet_exist
  doc: ': Directory should not yet exist, will be created.'
  type: Directory?
  inputBinding:
    prefix: -r
- id: in_integer_parsed_mode
  doc: ": an integer that is parsed to '--sjdbOverhang' under STAR 'genomeGenerate'\
    \ mode. Default: 150."
  type: long?
  inputBinding:
    prefix: -j
- id: in_typically_ercc_reference
  doc: ': Typically an ERCC reference.'
  type: string?
  inputBinding:
    prefix: -e
- id: in_bed_regions_excluded
  doc: ': BED of regions to be excluded from analysis.'
  type: string?
  inputBinding:
    prefix: -b
- id: in_nonoverlapping_bed_file
  doc: ': A non-overlapping BED file of additional Regions of Interest for read counts.'
  type: File?
  inputBinding:
    prefix: -R
- id: in_existing_star_reference
  doc: "An existing STAR reference folder.\nPlease note: By default, BuildRefFromSTARRef\
    \ mode automatically looks for the original FASTA and GTF files used to generate\
    \ STARRefDir.\nSpecifically, IRFinder investigates 'genomeParameters.txt' in STARRefDir.\n\
    If both files can be located, IRFinder will continue to generate reference, ignoring\
    \ '-f' and '-g' options.\nIf either file is missing, IRFinder will quit and you\
    \ have to re-run it by giving both '-f' and '-g' options."
  type: File?
  inputBinding:
    prefix: -x
- id: in_be_fasta_file
  doc: ': This MUST be the same FASTA file used to generate STARRefDir. Ignored when
    IRFinder can automatically locate the original file.'
  type: File?
  inputBinding:
    prefix: -f
- id: in_be_gtf_file
  doc: ': This MUST be the same GTF file used to generate STARRefDir. Ignored when
    IRFinder can automatically locate the original file.'
  type: File?
  inputBinding:
    prefix: -g
- id: in_sequence_disable_universal
  doc: "sequence: 'none' to disable. Default: Illumina Universal is trimmed."
  type: string?
  inputBinding:
    prefix: -a
- id: in_default_number_physical
  doc: ': Default is the number of physical CPUs'
  type: long?
  inputBinding:
    prefix: -t
- id: in_directory_default_current
  doc: 'Directory: Default is the current directory.'
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_memory_mode_default
  doc: 'memory mode: NoSharedMemory (default), LoadAndKeep, LoadAndRemove.'
  type: string?
  inputBinding:
    prefix: -s
- id: in_executable_default_is
  doc: "executable: Default is 'STAR'."
  type: string?
  inputBinding:
    prefix: -S
- id: in_extra_string_parsed
  doc: ': an extra string that is parsed to STAR for reads alignment.'
  type: string?
  inputBinding:
    prefix: -y
- id: in_output_sort_file
  doc: 'output: Do not sort the read fragment BAM file. Default is to sort ONLY IF
    a novosort license is present.'
  type: File?
  inputBinding:
    prefix: -u
- id: in_memory_maximum_memory
  doc: memory. Maximum memory to use for sort, in MB. Default, auto-detected no greater
    than 10,000MB.
  type: long?
  inputBinding:
    prefix: -M
- id: in_unsorted_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ftp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_raw_reads_one_dot_fast_q
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_sort_file
  doc: 'output: Do not sort the read fragment BAM file. Default is to sort ONLY IF
    a novosort license is present.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_sort_file)
hints: []
cwlVersion: v1.1
baseCommand:
- IRFinder
