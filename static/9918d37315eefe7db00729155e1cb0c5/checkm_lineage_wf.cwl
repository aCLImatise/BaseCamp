class: CommandLineTool
id: ../../../checkm_lineage_wf.cwl
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
- id: unique
  doc: 'minimum number of unique phylogenetic markers required to use lineage-specific
    marker set (default: 10)'
  type: string
  inputBinding:
    prefix: --unique
- id: multi
  doc: 'maximum number of multi-copy phylogenetic markers before defaulting to domain-level
    marker set (default: 10)'
  type: string
  inputBinding:
    prefix: --multi
- id: force_domain
  doc: use domain-level sets for all bins
  type: boolean
  inputBinding:
    prefix: --force_domain
- id: no_refinement
  doc: do not perform lineage-specific marker set refinement
  type: boolean
  inputBinding:
    prefix: --no_refinement
- id: individual_markers
  doc: treat marker as independent (i.e., ignore co-located set structure)
  type: boolean
  inputBinding:
    prefix: --individual_markers
- id: skip_adj_correction
  doc: do not exclude adjacent marker genes when estimating contamination
  type: boolean
  inputBinding:
    prefix: --skip_adj_correction
- id: skip_pseudogene_correction
  doc: skip identification and filtering of pseudogenes
  type: boolean
  inputBinding:
    prefix: --skip_pseudogene_correction
- id: aai_strain
  doc: 'AAI threshold used to identify strain heterogeneity (default: 0.9)'
  type: string
  inputBinding:
    prefix: --aai_strain
- id: alignment_file
  doc: produce file showing alignment of multi-copy genes and their AAI identity
  type: string
  inputBinding:
    prefix: --alignment_file
- id: ignore_thresholds
  doc: ignore model-specific score thresholds
  type: boolean
  inputBinding:
    prefix: --ignore_thresholds
- id: e_value
  doc: 'e-value cut off (default: 1e-10)'
  type: string
  inputBinding:
    prefix: --e_value
- id: length
  doc: 'percent overlap between target and query (default: 0.7)'
  type: long
  inputBinding:
    prefix: --length
- id: file
  doc: 'print results to file (default: stdout)'
  type: File
  inputBinding:
    prefix: --file
- id: tab_table
  doc: print tab-separated values table
  type: boolean
  inputBinding:
    prefix: --tab_table
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
- lineage_wf
