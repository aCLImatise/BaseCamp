class: CommandLineTool
id: or01_filter_hits.py.cwl
inputs:
- id: in_f_blast_file
  doc: "First BLAST results file with columns: qseqid, sseqid, pident,\nlength, mismatch,\
    \ gapopen, qstart, qend, sstart, send, evalue,\nbitscore, gaps, qcovs, qcovhsp,\
    \ qlen, slen"
  type: string
  inputBinding:
    position: 0
- id: in_outfile
  doc: Name of output
  type: string
  inputBinding:
    position: 1
- id: in_hit_num
  doc: Integer, Number of hits to include
  type: string
  inputBinding:
    position: 2
- id: in_coverage
  doc: Integer, Coverage of alignment (percentage)
  type: string
  inputBinding:
    position: 3
- id: in_database
  doc: Name of SQLite3 database
  type: string
  inputBinding:
    position: 4
- id: in_type
  doc: Type of data; nucl or prot
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/batch_brb:1.0.1--0
cwlVersion: v1.1
baseCommand:
- or01_filter_hits.py
