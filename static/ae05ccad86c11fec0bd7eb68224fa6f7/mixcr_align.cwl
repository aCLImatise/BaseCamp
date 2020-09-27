class: CommandLineTool
id: mixcr_align.cwl
inputs:
- id: in_no_warnings
  doc: Suppress all warning messages.
  type: boolean
  inputBinding:
    prefix: --no-warnings
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_force_overwrite
  doc: Force overwrite of output file(s).
  type: File
  inputBinding:
    prefix: --force-overwrite
- id: in_overwrite_if_required
  doc: "Overwrite output file if it is corrupted or if it was generated from\ndifferent\
    \ input file or with different parameters. -f / --force-overwrite\noverrides this\
    \ option."
  type: boolean
  inputBinding:
    prefix: --overwrite-if-required
- id: in_species
  doc: "Species (organism), as specified in library file or taxon id.\nPossible values:\
    \ hs, HomoSapiens, musmusculus, mmu, hsa, 9606, 10090 etc."
  type: File
  inputBinding:
    prefix: --species
- id: in_report
  doc: "Report file (human readable version, see -j / --json-report for machine\n\
    readable report)"
  type: File
  inputBinding:
    prefix: --report
- id: in_json_report
  doc: JSON formatted report file
  type: File
  inputBinding:
    prefix: --json-report
- id: in_library
  doc: V/D/J/C gene library
  type: string
  inputBinding:
    prefix: --library
- id: in_trimming_quality_threshold
  doc: 'Read pre-processing: trimming quality threshold'
  type: string
  inputBinding:
    prefix: --trimming-quality-threshold
- id: in_trimming_window_size
  doc: 'Read pre-processing: trimming window size'
  type: long
  inputBinding:
    prefix: --trimming-window-size
- id: in_parameters
  doc: Parameters preset.
  type: string
  inputBinding:
    prefix: --parameters
- id: in_stringstring_overrides_default
  doc: <String=String>       Overrides default aligner parameter values
  type: boolean
  inputBinding:
    prefix: -O
- id: in_write_all
  doc: Write alignment results for all input reads (even if alignment failed).
  type: boolean
  inputBinding:
    prefix: --write-all
- id: in_not_aligned_r_one
  doc: Pipe not aligned R1 reads into separate file.
  type: long
  inputBinding:
    prefix: --not-aligned-R1
- id: in_not_aligned_r_two
  doc: Pipe not aligned R2 reads into separate file.
  type: long
  inputBinding:
    prefix: --not-aligned-R2
- id: in_limit
  doc: Maximal number of reads to process
  type: long
  inputBinding:
    prefix: --limit
- id: in_threads
  doc: Processing threads
  type: string
  inputBinding:
    prefix: --threads
- id: in_files
  doc: file_R1.(fastq[.gz]|fasta) [file_R2.fastq[.gz]] alignments.vdjca
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite
  doc: Force overwrite of output file(s).
  type: File
  outputBinding:
    glob: $(inputs.in_force_overwrite)
cwlVersion: v1.1
baseCommand:
- mixcr
- align
