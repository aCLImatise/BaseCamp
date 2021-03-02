class: CommandLineTool
id: capClocation2fragment.cwl
inputs:
- id: in_restfragfile_filename_bed
  doc: restfragfile    filename for bed file containing the list of restriction fragments
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_outfile_filename_present
  doc: outfile         filename for output bed file (if not present output with be
    sent to stdout)
  type: File?
  inputBinding:
    prefix: -o
- id: in_inputfile_filename_bed
  doc: inputfile       filename for bed file containing genomic locations
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_location_single_genomic
  doc: location        is a single genomic location in format chr1:1234-5678
  type: boolean?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile_filename_present
  doc: outfile         filename for output bed file (if not present output with be
    sent to stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile_filename_present)
hints: []
cwlVersion: v1.1
baseCommand:
- capClocation2fragment
