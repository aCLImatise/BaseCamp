class: CommandLineTool
id: ../../../minority_freq.cwl
inputs:
- id: start
  doc: 'Starting position of the region of interest, 0-based indexing (default: None)'
  type: long
  inputBinding:
    prefix: --start
- id: end
  doc: 'Ending position of the region of interest, 0-based indexing. Note a half-open
    interval is used, i.e, [start:end) (default: None)'
  type: long
  inputBinding:
    prefix: --end
- id: config
  doc: 'Report minority aminoacids - a .config file specifying reading frames expected
    (default: None)'
  type: File
  inputBinding:
    prefix: --config
- id: minimum_read_depth
  doc: 'Minimum read depth for reporting variants per locus and sample (default: 100)'
  type: long
  inputBinding:
    prefix: -c
- id: name_patientsample_identifiers
  doc: ',name2,...    Patient/sample identifiers as comma separated strings (default:
    None)'
  type: string
  inputBinding:
    prefix: -N
- id: number_threads_default
  doc: 'Number of threads (default: 1)'
  type: long
  inputBinding:
    prefix: -t
- id: freqs
  doc: 'Indicates whether or not all frequencies should be stored (default: False)'
  type: boolean
  inputBinding:
    prefix: --freqs
- id: indicates_coverage_written
  doc: 'Indicates whether coverage per locus should be written to output file (default:
    False)'
  type: boolean
  inputBinding:
    prefix: -d
- id: output_directory_default
  doc: 'Output directory (default: /tmp/tmp0coinnkt)'
  type: File
  inputBinding:
    prefix: -o
- id: fasta_file_containing
  doc: 'Either a fasta file containing a reference sequence or the reference name
    of the region/chromosome of interest. The latter is expected if a region is specified
    (default: None)'
  type: string
  inputBinding:
    prefix: -r
- id: bam
  doc: BAM file(s)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- minority_freq
