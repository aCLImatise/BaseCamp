class: CommandLineTool
id: ../../../IRFinder.cwl
inputs:
- id: version_number_current
  doc: version number of current IRFinder.
  type: string
  inputBinding:
    prefix: -v
- id: this_usage_information
  doc: this usage information.
  type: string
  inputBinding:
    prefix: -h
- id: fastq_default_quantifies
  doc: FastQ (default. Quantifies intron retention from FASTQ file); BAM (quantifies
    intron retention from a name-sorted BAM file); BuildRef (builds IRFinder reference
    from Ensembl FTP site. Requires Internet), BuildRefDownload (only downloads FASTA
    and GTF files from Ensembl FTP site, without building IRFinder reference. Requires
    Internet), BuildRefProcess (builds IRFinder reference from local FASTA and GTF
    files), BuildRefFromSTARRef (builds IRFinder reference from a local STAR reference).
  type: string
  inputBinding:
    prefix: -m
- id: directory_should_yet
  doc: ': Directory should not yet exist, will be created.'
  type: string
  inputBinding:
    prefix: -r
- id: integer_parsed_mode
  doc: ": an integer that is parsed to '--sjdbOverhang' under STAR 'genomeGenerate'\
    \ mode. Default: 150."
  type: long
  inputBinding:
    prefix: -j
- id: typically_ercc_reference
  doc: ': Typically an ERCC reference.'
  type: string
  inputBinding:
    prefix: -e
- id: bed_regions_excluded
  doc: ': BED of regions to be excluded from analysis.'
  type: string
  inputBinding:
    prefix: -b
- id: nonoverlapping_bed_file
  doc: ': A non-overlapping BED file of additional Regions of Interest for read counts.'
  type: string
  inputBinding:
    prefix: -R
- id: must_same_fasta
  doc: ': This MUST be the same FASTA file used to generate STARRefDir. Ignored when
    IRFinder can automatically locate the original file.'
  type: string
  inputBinding:
    prefix: -f
- id: must_same_gtf
  doc: ': This MUST be the same GTF file used to generate STARRefDir. Ignored when
    IRFinder can automatically locate the original file.'
  type: string
  inputBinding:
    prefix: -g
- id: sequence_disable_universal
  doc: "sequence: 'none' to disable. Default: Illumina Universal is trimmed."
  type: string
  inputBinding:
    prefix: -a
- id: default_number_physical
  doc: ': Default is the number of physical CPUs'
  type: string
  inputBinding:
    prefix: -t
- id: directory_default_current
  doc: 'Directory: Default is the current directory.'
  type: string
  inputBinding:
    prefix: -d
- id: memory_mode_nosharedmemory
  doc: 'memory mode: NoSharedMemory (default), LoadAndKeep, LoadAndRemove.'
  type: string
  inputBinding:
    prefix: -s
- id: executable_default_is
  doc: "executable: Default is 'STAR'."
  type: string
  inputBinding:
    prefix: -S
- id: extra_string_parsed
  doc: ': an extra string that is parsed to STAR for reads alignment.'
  type: string
  inputBinding:
    prefix: -y
- id: output_sort_fragment
  doc: 'output: Do not sort the read fragment BAM file. Default is to sort ONLY IF
    a novosort license is present.'
  type: string
  inputBinding:
    prefix: -u
- id: memory_maximum_memory
  doc: memory. Maximum memory to use for sort, in MB. Default, auto-detected no greater
    than 10,000MB.
  type: string
  inputBinding:
    prefix: -M
- id: raw_reads_one_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- IRFinder
