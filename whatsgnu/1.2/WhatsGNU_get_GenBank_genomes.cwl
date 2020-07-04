class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/WhatsGNU_get_GenBank_genomes.py.cwl
inputs:
- id: faa
  doc: protein faa file from GenBank
  type: boolean
  inputBinding:
    prefix: --faa
- id: contigs
  doc: genomic fna file from GenBank
  type: boolean
  inputBinding:
    prefix: --contigs
- id: remove
  doc: remove assembly_summary_genbank.txt after done
  type: boolean
  inputBinding:
    prefix: --remove
- id: list
  doc: a list.txt file of GenBank accession numbers (GCA#.#)
  type: string
  inputBinding:
    position: 0
- id: output_folder
  doc: give name for output folder to be created
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- WhatsGNU_get_GenBank_genomes.py
