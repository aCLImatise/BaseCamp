class: CommandLineTool
id: magpurify_conspecific.cwl
inputs:
- id: in_mash_dist
  doc: 'Mash distance to reference genomes (default: 0.05)'
  type: double
  inputBinding:
    prefix: --mash-dist
- id: in_max_genomes
  doc: 'Max number of genomes to use (default: 25)'
  type: long
  inputBinding:
    prefix: --max-genomes
- id: in_min_genomes
  doc: 'Min number of genomes to use (default: 1)'
  type: long
  inputBinding:
    prefix: --min-genomes
- id: in_contig_aln
  doc: "Minimum fraction of contig aligned to reference\n(default: 0.5)"
  type: double
  inputBinding:
    prefix: --contig-aln
- id: in_contig_pid
  doc: "Minimum percent identity of contig aligned to\nreference (default: 95.0)"
  type: double
  inputBinding:
    prefix: --contig-pid
- id: in_hit_rate
  doc: 'Hit rate for flagging contigs (default: 0.0)'
  type: double
  inputBinding:
    prefix: --hit-rate
- id: in_exclude
  doc: 'List of references to exclude (default: )'
  type: string[]
  inputBinding:
    prefix: --exclude
- id: in_threads
  doc: 'Number of CPUs to use (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_fna
  doc: Path to input genome in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: Output directory to store results and intermediate
  type: string
  inputBinding:
    position: 1
- id: in_files
  doc: mash_sketch           Path to Mash sketch of reference genomes
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- magpurify
- conspecific
