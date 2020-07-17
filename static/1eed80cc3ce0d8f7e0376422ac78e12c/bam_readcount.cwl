class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam_readcount.cwl
inputs:
- id: output_version_number
  doc: '[ --version ]                      output the version number'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_minimum_quality
  doc: '[ --min-mapping-quality ] arg (=0) minimum mapping quality of reads used  for
    counting.'
  type: boolean
  inputBinding:
    prefix: -q
- id: arg_minimum_base
  doc: '[ --min-base-quality ] arg (=0)    minimum base quality at a position to  use
    the read for counting.'
  type: boolean
  inputBinding:
    prefix: -b
- id: arg_max_depth
  doc: '[ --max-count ] arg (=10000000)    max depth to avoid excessive memory  usage.'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_file_containing
  doc: '[ --site-list ] arg                file containing a list of regions to  report
    readcounts within.'
  type: boolean
  inputBinding:
    prefix: -l
- id: arg_reference_sequence
  doc: '[ --reference-fasta ] arg          reference sequence in the fasta format.'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_report_qualities
  doc: '[ --print-individual-mapq ] arg    report the mapping qualities as a comma
    separated list.'
  type: boolean
  inputBinding:
    prefix: -D
- id: report_results_library
  doc: '[ --per-library ]                  report results by library.'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_maximum_number
  doc: '[ --max-warnings ] arg             maximum number of warnings of each type
    to emit. -1 gives an unlimited number.'
  type: boolean
  inputBinding:
    prefix: -w
- id: generate_indel_readcounts
  doc: '[ --insertion-centric ]            generate indel centric readcounts.  Reads
    containing insertions will not be included in per-base counts'
  type: boolean
  inputBinding:
    prefix: -i
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: region
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bam-readcount
