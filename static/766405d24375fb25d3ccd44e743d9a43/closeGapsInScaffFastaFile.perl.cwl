class: CommandLineTool
id: closeGapsInScaffFastaFile.perl.cwl
inputs:
- id: in_scaffold_fast_a_file
  doc: ': file containing the scaffold sequences'
  type: File
  inputBinding:
    prefix: --scaffold-fasta-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- closeGapsInScaffFastaFile.perl
