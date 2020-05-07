class: CommandLineTool
id: builder.pl.cwl
inputs:
- id: newick
  doc: '- Guide tree in newick format (same names as fasta files without suffix .fna)'
  type: boolean
  inputBinding:
    prefix: --newick
- id: dir
  doc: '- Directory of fasta files (.fna)'
  type: boolean
  inputBinding:
    prefix: --dir
- id: output
  doc: '- User defined database name'
  type: boolean
  inputBinding:
    prefix: --output
- id: blacklist
  doc: '- .list file of k-mers unwanted in database (human, plasmids etc)'
  type: boolean
  inputBinding:
    prefix: --blacklist
- id: word
  doc: '- K-mer length used in database building and later searching (default 32)'
  type: boolean
  inputBinding:
    prefix: --word
- id: min
  doc: '- Minimal amout of k-mers in node to be considered as subroot (default 250)'
  type: boolean
  inputBinding:
    prefix: --min
- id: greater
  doc: '- Maximum times child could have more k-mers than parent (default 250)'
  type: boolean
  inputBinding:
    prefix: --greater
- id: threads
  doc: '- Number of cores used'
  type: boolean
  inputBinding:
    prefix: --threads
- id: max
  doc: '- Maximum number of k-mers in one list (default 100000)'
  type: boolean
  inputBinding:
    prefix: -max
outputs: []
cwlVersion: v1.1
baseCommand:
- builder.pl
