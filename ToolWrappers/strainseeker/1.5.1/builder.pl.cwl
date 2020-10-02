class: CommandLineTool
id: builder.pl.cwl
inputs:
- id: in_newick
  doc: '- Guide tree in newick format (same names as fasta files without suffix .fna)'
  type: boolean
  inputBinding:
    prefix: --newick
- id: in_dir
  doc: '- Directory of fasta files (.fna)'
  type: boolean
  inputBinding:
    prefix: --dir
- id: in_output
  doc: '- User defined database name'
  type: boolean
  inputBinding:
    prefix: --output
- id: in_blacklist
  doc: '- .list file of k-mers unwanted in database (human, plasmids etc)'
  type: boolean
  inputBinding:
    prefix: --blacklist
- id: in_word
  doc: '- K-mer length used in database building and later searching (default 32)'
  type: boolean
  inputBinding:
    prefix: --word
- id: in_min
  doc: '- Minimal amout of k-mers in node to be considered as subroot (default 250)'
  type: boolean
  inputBinding:
    prefix: --min
- id: in_greater
  doc: '- Maximum times child could have more k-mers than parent (default 250)'
  type: boolean
  inputBinding:
    prefix: --greater
- id: in_threads
  doc: '- Number of cores used'
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_max
  doc: '- Maximum number of k-mers in one list (default 100000)'
  type: boolean
  inputBinding:
    prefix: -max
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- builder.pl
