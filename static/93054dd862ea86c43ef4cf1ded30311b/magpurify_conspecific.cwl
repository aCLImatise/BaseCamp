class: CommandLineTool
id: magpurify_conspecific.cwl
inputs:
- id: fna
  doc: Path to input genome in FASTA format
  type: string
  inputBinding:
    position: 0
- id: out
  doc: Output directory to store results and intermediate files
  type: string
  inputBinding:
    position: 1
- id: mash_sketch
  doc: Path to Mash sketch of reference genomes
  type: string
  inputBinding:
    position: 2
- id: mash_dist
  doc: 'Mash distance to reference genomes (default: 0.05)'
  type: string
  inputBinding:
    prefix: --mash-dist
- id: max_genomes
  doc: 'Max number of genomes to use (default: 25)'
  type: long
  inputBinding:
    prefix: --max-genomes
- id: min_genomes
  doc: 'Min number of genomes to use (default: 1)'
  type: long
  inputBinding:
    prefix: --min-genomes
- id: contig_aln
  doc: 'Minimum fraction of contig aligned to reference (default: 0.5)'
  type: string
  inputBinding:
    prefix: --contig-aln
- id: contig_pid
  doc: 'Minimum percent identity of contig aligned to reference (default: 95.0)'
  type: string
  inputBinding:
    prefix: --contig-pid
- id: hit_rate
  doc: 'Hit rate for flagging contigs (default: 0.0)'
  type: string
  inputBinding:
    prefix: --hit-rate
- id: exclude
  doc: 'List of references to exclude (default: )'
  type: string[]
  inputBinding:
    prefix: --exclude
- id: threads
  doc: 'Number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- magpurify
- conspecific
