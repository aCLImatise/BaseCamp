class: CommandLineTool
id: ../../../capClocation2fragment.cwl
inputs:
- id: restfragfile_filename_bed
  doc: restfragfile    filename for bed file containing the list of restriction fragments
  type: boolean
  inputBinding:
    prefix: -r
- id: outfile_filename_output
  doc: outfile         filename for output bed file (if not present output with be
    sent to stdout)
  type: boolean
  inputBinding:
    prefix: -o
- id: inputfile_filename_bed
  doc: inputfile       filename for bed file containing genomic locations
  type: boolean
  inputBinding:
    prefix: -i
- id: location_single_genomic
  doc: 'location        is a single genomic location in format chr1:1234-5678 '
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- capClocation2fragment
