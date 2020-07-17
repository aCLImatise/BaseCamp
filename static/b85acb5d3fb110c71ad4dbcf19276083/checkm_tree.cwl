class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkm_tree.cwl
inputs:
- id: reduced_tree
  doc: use reduced tree (requires <16GB of memory) for determining lineage of each
    bin
  type: boolean
  inputBinding:
    prefix: --reduced_tree
- id: ali
  doc: generate HMMER alignment file for each bin
  type: boolean
  inputBinding:
    prefix: --ali
- id: nt
  doc: generate nucleotide gene sequences for each bin
  type: boolean
  inputBinding:
    prefix: --nt
- id: genes
  doc: bins contain genes as amino acids instead of nucleotide contigs
  type: boolean
  inputBinding:
    prefix: --genes
- id: extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: string
  inputBinding:
    prefix: --extension
- id: threads
  doc: 'number of threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: p_placer_threads
  doc: 'number of threads used by pplacer (memory usage increases linearly with additional
    threads) (default: 1)'
  type: string
  inputBinding:
    prefix: --pplacer_threads
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: tmpdir
  doc: specify an alternative directory for temporary files
  type: string
  inputBinding:
    prefix: --tmpdir
- id: bin_dir
  doc: directory containing bins (fasta format)
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: directory to write output files
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- tree
