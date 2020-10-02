class: CommandLineTool
id: hicup.cwl
inputs:
- id: in_bowtie
  doc: Specify the path to Bowtie
  type: boolean
  inputBinding:
    prefix: --bowtie
- id: in_bowtie_two
  doc: Specify the path to Bowtie 2
  type: boolean
  inputBinding:
    prefix: --bowtie2
- id: in_config
  doc: Specify the configuration file
  type: boolean
  inputBinding:
    prefix: --config
- id: in_digest
  doc: Specify the digest file listing restriction fragment co-ordinates
  type: boolean
  inputBinding:
    prefix: --digest
- id: in_example
  doc: Produce an example configuration file
  type: boolean
  inputBinding:
    prefix: --example
- id: in_format
  doc: "Specify FASTQ format\nOptions: Sanger, Solexa_Illumina_1.0, Illumina_1.3,\
    \ Illumina_1.5"
  type: boolean
  inputBinding:
    prefix: --format
- id: in_index
  doc: Path to the relevant reference genome Bowtie/Bowtie2 indices
  type: boolean
  inputBinding:
    prefix: --index
- id: in_keep
  doc: Keep intermediate pipeline files
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_longest
  doc: Maximum allowable insert size (bps)
  type: boolean
  inputBinding:
    prefix: --longest
- id: in_no_fill
  doc: "Hi-C protocol did NOT include a fill-in of sticky ends prior to\nligation\
    \ step and therefore FASTQ reads shall be truncated at the\nHi-C restriction enzyme\
    \ cut site (if present) sequence is\nencountered"
  type: boolean
  inputBinding:
    prefix: --nofill
- id: in_outdir
  doc: Directory to write output files
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_quiet
  doc: Suppress progress reports (except warnings)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_shortest
  doc: Minimum allowable insert size (bps)
  type: boolean
  inputBinding:
    prefix: --shortest
- id: in_temp
  doc: "Write intermediate files (i.e. all except summary files and files\ngenerated\
    \ by HiCUP Deduplicator) to a specified directory"
  type: boolean
  inputBinding:
    prefix: --temp
- id: in_threads
  doc: "Specify the number of threads, allowing simultaneous processing\nof multiple\
    \ files"
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_zip
  doc: Compress output
  type: boolean
  inputBinding:
    prefix: --zip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Directory to write output files
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- hicup
