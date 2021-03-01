class: CommandLineTool
id: bam_readcount.cwl
inputs:
- id: in_output_version_number
  doc: '[ --version ]                      output the version number'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_minimum_mapping
  doc: "[ --min-mapping-quality ] arg (=0) minimum mapping quality of reads used\n\
    for counting."
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_arg_base_quality
  doc: "[ --min-base-quality ] arg (=0)    minimum base quality at a position to\n\
    use the read for counting."
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_max_depth
  doc: '[ --max-count ] arg (=10000000)    max depth to avoid excessive memory'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_reference_sequence
  doc: '[ --reference-fasta ] arg          reference sequence in the fasta format.'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_report_qualities
  doc: "[ --print-individual-mapq ] arg    report the mapping qualities as a comma\n\
    separated list."
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_report_results_library
  doc: '[ --per-library ]                  report results by library.'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_maximum_number
  doc: "[ --max-warnings ] arg             maximum number of warnings of each type\n\
    to emit. -1 gives an unlimited number."
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_generate_indel_readcountsreads
  doc: "[ --insertion-centric ]            generate indel centric readcounts.\nReads\
    \ containing insertions will not be\nincluded in per-base counts\n"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_usage_dot
  doc: '-l [ --site-list ] arg                file containing a list of regions to '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bam-readcount
