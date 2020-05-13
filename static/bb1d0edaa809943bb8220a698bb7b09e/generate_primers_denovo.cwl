class: CommandLineTool
id: generate_primers_denovo.py.cwl
inputs:
- id: target_seqs
  doc: Target aligned fasta sequence files to find conserved sites for primer design.  Separate
    multiple files with a colon. [REQUIRED]
  type: string
  inputBinding:
    prefix: --target_seqs
- id: output_file_path
  doc: name of output filepath to write details about conserved sequence sites. [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_filepath
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_primers_denovo.py
