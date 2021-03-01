class: CommandLineTool
id: checkm_tree.cwl
inputs:
- id: in_reduced_tree
  doc: use reduced tree (requires <16GB of memory) for determining lineage of each
    bin
  type: boolean?
  inputBinding:
    prefix: --reduced_tree
- id: in_ali
  doc: generate HMMER alignment file for each bin
  type: boolean?
  inputBinding:
    prefix: --ali
- id: in_nt
  doc: generate nucleotide gene sequences for each bin
  type: boolean?
  inputBinding:
    prefix: --nt
- id: in_genes
  doc: bins contain genes as amino acids instead of nucleotide contigs
  type: boolean?
  inputBinding:
    prefix: --genes
- id: in_extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: Directory?
  inputBinding:
    prefix: --extension
- id: in_threads
  doc: 'number of threads (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_p_placer_threads
  doc: 'number of threads used by pplacer (memory usage increases linearly with additional
    threads) (default: 1)'
  type: long?
  inputBinding:
    prefix: --pplacer_threads
- id: in_quiet
  doc: suppress console output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_tmpdir
  doc: specify an alternative directory for temporary files
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_bin_dir
  doc: directory containing bins (fasta format)
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: directory to write output files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkm-genome:1.1.3--py_1
cwlVersion: v1.1
baseCommand:
- checkm
- tree
