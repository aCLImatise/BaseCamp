class: CommandLineTool
id: initializeTranscriptDatasource.cwl
inputs:
- id: gtf_files
  doc: 'Location of the gtf files.  Multiple files can be specified as a comma separated
    list (e.g. file1,file2) without spaces '
  type: string
  inputBinding:
    position: 0
- id: fast_a_files
  doc: Location of the fasta file (cDNA) associated with the gtf files.  Multiple
    files can be specified as a comma separated list (e.g. file1,file2) without spaces
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: Datasource output location.  This directory should NOT already exist.
  type: string
  inputBinding:
    position: 2
- id: genome_build
  doc: Genome build -- this must be specified correctly by the user.  For example,
    hg19.
  type: string
  inputBinding:
    position: 3
- id: version
  doc: version.  For example, v18
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- initializeTranscriptDatasource
