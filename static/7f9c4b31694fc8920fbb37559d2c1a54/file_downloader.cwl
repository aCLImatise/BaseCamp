class: CommandLineTool
id: file_downloader.py.cwl
inputs:
- id: protein
  doc: DFAST reference databases. [dfast|bifido|cyanobase|ecoli|lab]
  type: string[]
  inputBinding:
    prefix: --protein
- id: cdd
  doc: Preformatted RPS-BLAST database. [Cdd|Cdd_NCBI|Cog|Kog|Pfam|Prk|Smart|Tigr]
  type: string[]
  inputBinding:
    prefix: --cdd
- id: hmm
  doc: Preformatted RPS-BLAST database. [Pfam|TIGR|dbCAN]
  type: string[]
  inputBinding:
    prefix: --hmm
- id: assembly
  doc: '[ACCESSION [ACCESSION ...]] Accession(s) for NCBI Assembly DB. eg. GCF_000091005.1
    GCA_000008865.1'
  type: boolean
  inputBinding:
    prefix: --assembly
- id: assembly_fast_a
  doc: '[ACCESSION [ACCESSION ...]] Accession(s) for NCBI Assembly DB. eg. GCF_000091005.1
    GCA_000008865.1'
  type: boolean
  inputBinding:
    prefix: --assembly_fasta
- id: no_indexing
  doc: Do not perform database indexing
  type: boolean
  inputBinding:
    prefix: --no_indexing
- id: out
  doc: Output directory
  type: File
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- file_downloader.py
