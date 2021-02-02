class: CommandLineTool
id: WhatsGNU_get_GenBank_genomes.py.cwl
inputs:
- id: in_faa
  doc: protein faa file from GenBank
  type: boolean
  inputBinding:
    prefix: --faa
- id: in_contigs
  doc: genomic fna file from GenBank
  type: boolean
  inputBinding:
    prefix: --contigs
- id: in_remove
  doc: remove assembly_summary_genbank.txt after done
  type: boolean
  inputBinding:
    prefix: --remove
- id: in_list
  doc: a list.txt file of GenBank accession numbers (GCA#.#)
  type: string
  inputBinding:
    position: 0
- id: in_output_folder
  doc: give name for output folder to be created
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- WhatsGNU_get_GenBank_genomes.py
