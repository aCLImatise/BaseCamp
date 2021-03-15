class: CommandLineTool
id: rosella_bin.cwl
inputs:
- id: in_ulimit
  doc: ''
  type: string?
  inputBinding:
    prefix: --ulimit
- id: in_trim_min
  doc: ''
  type: long?
  inputBinding:
    prefix: --trim-min
- id: in_trim_max
  doc: ''
  type: long?
  inputBinding:
    prefix: --trim-max
- id: in_threads
  doc: ''
  type: string?
  inputBinding:
    prefix: --threads
- id: in_scaler
  doc: ''
  type: string?
  inputBinding:
    prefix: --scaler
- id: in_reference
  doc: ''
  type: string?
  inputBinding:
    prefix: --reference
- id: in_ploidy
  doc: ''
  type: string?
  inputBinding:
    prefix: --ploidy
- id: in_parallel_contigs
  doc: ''
  type: string?
  inputBinding:
    prefix: --parallel-contigs
- id: in_output_directory
  doc: ''
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_n_neighbors
  doc: ''
  type: string?
  inputBinding:
    prefix: --n-neighbors
- id: in_n_components
  doc: ''
  type: string?
  inputBinding:
    prefix: --n-components
- id: in_minimum_reads_in_link
  doc: ''
  type: string?
  inputBinding:
    prefix: --minimum-reads-in-link
- id: in_min_variant_quality
  doc: ''
  type: long?
  inputBinding:
    prefix: --min-variant-quality
- id: in_min_variant_depth
  doc: ''
  type: long?
  inputBinding:
    prefix: --min-variant-depth
- id: in_min_samples
  doc: ''
  type: long?
  inputBinding:
    prefix: --min-samples
- id: in_min_repeat_entropy
  doc: ''
  type: long?
  inputBinding:
    prefix: --min-repeat-entropy
- id: in_min_read_aligned_percent
  doc: ''
  type: long?
  inputBinding:
    prefix: --min-read-aligned-percent
- id: in_min_dist
  doc: ''
  type: long?
  inputBinding:
    prefix: --min-dist
- id: in_min_covered_fraction
  doc: ''
  type: long?
  inputBinding:
    prefix: --min-covered-fraction
- id: in_min_contig_size
  doc: ''
  type: long?
  inputBinding:
    prefix: --min-contig-size
- id: in_min_bin_size
  doc: ''
  type: long?
  inputBinding:
    prefix: --min-bin-size
- id: in_method
  doc: ''
  type: string?
  inputBinding:
    prefix: --method
- id: in_mapq_threshold
  doc: ''
  type: string?
  inputBinding:
    prefix: --mapq-threshold
- id: in_mapper
  doc: ''
  type: string?
  inputBinding:
    prefix: --mapper
- id: in_long_read_mapper
  doc: ''
  type: string?
  inputBinding:
    prefix: --longread-mapper
- id: in_km_er_size
  doc: ''
  type: long?
  inputBinding:
    prefix: --kmer-size
- id: in_in_del_heterozygosity
  doc: ''
  type: string?
  inputBinding:
    prefix: --indel-heterozygosity
- id: in_heterozygosity
  doc: ''
  type: string?
  inputBinding:
    prefix: --heterozygosity
- id: in_fdr_threshold
  doc: ''
  type: string?
  inputBinding:
    prefix: --fdr-threshold
- id: in_coverage_fold
  doc: ''
  type: string?
  inputBinding:
    prefix: --coverage-fold
- id: in_contig_end_exclusion
  doc: ''
  type: string?
  inputBinding:
    prefix: --contig-end-exclusion
- id: in_cluster_distance
  doc: ''
  type: string?
  inputBinding:
    prefix: --cluster-distance
- id: in_base_quality_threshold
  doc: ''
  type: string?
  inputBinding:
    prefix: --base-quality-threshold
- id: in_b_tail
  doc: ''
  type: string?
  inputBinding:
    prefix: --b-tail
- id: in_a_spread
  doc: ''
  type: string?
  inputBinding:
    prefix: --a-spread
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: ''
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rosella:0.3.0--h443a992_0
cwlVersion: v1.1
baseCommand:
- rosella
- bin
