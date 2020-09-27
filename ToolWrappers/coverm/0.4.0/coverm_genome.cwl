class: CommandLineTool
id: coverm_genome.cwl
inputs:
- id: in_coupled
  doc: "...\n--genome-definition <genome-definition>\n--genome-fasta-directory <genome-fasta-directory>\n\
    --genome-fasta-files <genome-fasta-files>...\n--interleaved <interleaved>...\n\
    -1 <read1>...\n-2 <read2>...\n--separator <separator>\n--single <single>..."
  type: Directory
  inputBinding:
    prefix: --coupled
- id: in_contig_end_exclusion
  doc: ''
  type: string
  inputBinding:
    prefix: --contig-end-exclusion
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- coverm
- genome
