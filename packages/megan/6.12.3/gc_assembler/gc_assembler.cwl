class: CommandLineTool
id: gc_assembler.cwl
inputs:
- id: in_input
  doc: '[string]                 Input DAA or RMA6 file. Mandatory option.'
  type: boolean
  inputBinding:
    prefix: --input
- id: in_output
  doc: '[string]                Output filename template, use %d or %s to represent
    class id or name, respectively. Default value: input-%d.fasta.'
  type: boolean
  inputBinding:
    prefix: --output
- id: in_ids
  doc: '[string(s)]               Names or ids of classes to assemble, or keyword
    ALL for all. Mandatory option.'
  type: boolean
  inputBinding:
    prefix: --ids
- id: in_minlength
  doc: '[number]           Minimum contig length. Default value: 200.'
  type: boolean
  inputBinding:
    prefix: --minLength
- id: in_min_reads
  doc: '[number]          Minimum number of reads. Default value: 2.'
  type: boolean
  inputBinding:
    prefix: --minReads
- id: in_min_av_coverage
  doc: '[number]       Minimum average coverage. Default value: 1.'
  type: boolean
  inputBinding:
    prefix: --minAvCoverage
- id: in_overlap_contigs
  doc: 'Attempt to overlap contigs. Default value: true.'
  type: boolean
  inputBinding:
    prefix: --overlapContigs
- id: in_min_overlap_contigs
  doc: '[number]   Minimum overlap for two contigs. Default value: 20.'
  type: boolean
  inputBinding:
    prefix: --minOverlapContigs
- id: in_min_percent_identity_contigs
  doc: '[number]   Mininum percent identity to merge contigs. Default value: 98.0.'
  type: boolean
  inputBinding:
    prefix: --minPercentIdentityContigs
- id: in_threads
  doc: '[number]               Number of worker threads. Default value: 4.'
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_very_verbose
  doc: 'Report program is very verbose detail. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --veryVerbose
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_classification
  doc: '-fun, --function [string]            Name of functional classification (choices:
    EGGNOG, INTERPRO2GO, KEGG, SEED, none). Mandatory option.'
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: '-mor, --minOverlapReads [number]     Minimum overlap for two reads. Default
    value: 20.'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gc-assembler
