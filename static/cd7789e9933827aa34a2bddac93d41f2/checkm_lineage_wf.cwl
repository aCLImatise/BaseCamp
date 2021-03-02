class: CommandLineTool
id: checkm_lineage_wf.cwl
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
- id: in_unique
  doc: 'minimum number of unique phylogenetic markers required to use lineage-specific
    marker set (default: 10)'
  type: long?
  inputBinding:
    prefix: --unique
- id: in_multi
  doc: 'maximum number of multi-copy phylogenetic markers before defaulting to domain-level
    marker set (default: 10)'
  type: long?
  inputBinding:
    prefix: --multi
- id: in_force_domain
  doc: use domain-level sets for all bins
  type: boolean?
  inputBinding:
    prefix: --force_domain
- id: in_no_refinement
  doc: do not perform lineage-specific marker set refinement
  type: boolean?
  inputBinding:
    prefix: --no_refinement
- id: in_individual_markers
  doc: treat marker as independent (i.e., ignore co-located set structure)
  type: boolean?
  inputBinding:
    prefix: --individual_markers
- id: in_skip_adj_correction
  doc: do not exclude adjacent marker genes when estimating contamination
  type: boolean?
  inputBinding:
    prefix: --skip_adj_correction
- id: in_skip_pseudogene_correction
  doc: skip identification and filtering of pseudogenes
  type: boolean?
  inputBinding:
    prefix: --skip_pseudogene_correction
- id: in_aai_strain
  doc: 'AAI threshold used to identify strain heterogeneity (default: 0.9)'
  type: double?
  inputBinding:
    prefix: --aai_strain
- id: in_alignment_file
  doc: produce file showing alignment of multi-copy genes and their AAI identity
  type: File?
  inputBinding:
    prefix: --alignment_file
- id: in_ignore_thresholds
  doc: ignore model-specific score thresholds
  type: boolean?
  inputBinding:
    prefix: --ignore_thresholds
- id: in_e_value
  doc: 'e-value cut off (default: 1e-10)'
  type: double?
  inputBinding:
    prefix: --e_value
- id: in_length
  doc: 'percent overlap between target and query (default: 0.7)'
  type: long?
  inputBinding:
    prefix: --length
- id: in_file
  doc: 'print results to file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --file
- id: in_tab_table
  doc: print tab-separated values table
  type: boolean?
  inputBinding:
    prefix: --tab_table
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
hints: []
cwlVersion: v1.1
baseCommand:
- checkm
- lineage_wf
