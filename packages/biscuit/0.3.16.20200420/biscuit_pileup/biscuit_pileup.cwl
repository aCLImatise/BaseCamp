class: CommandLineTool
id: biscuit_pileup.cwl
inputs:
- id: in_region_optional_specified
  doc: region (optional, if not specified the whole bam will be processed).
  type: boolean
  inputBinding:
    prefix: -g
- id: in_number_of_threads
  doc: number of threads [3].
  type: boolean
  inputBinding:
    prefix: -q
- id: in_nomeseq_mode
  doc: NOMe-seq mode [off]
  type: boolean
  inputBinding:
    prefix: -N
- id: in_somatic_mode_must
  doc: somatic mode, must also provide -T (tumor BAM) and -I (normal BAM) arguments
    [off]
  type: boolean
  inputBinding:
    prefix: -S
- id: in_somatic_mode_tumor
  doc: somatic mode, tumor BAM
  type: boolean
  inputBinding:
    prefix: -T
- id: in_somatic_mode_normal
  doc: somatic mode, normal BAM
  type: boolean
  inputBinding:
    prefix: -I
- id: in_pileup_output_file
  doc: pileup output file [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: in_pileup_statistics_output
  doc: pileup statistics output prefix [same as output]
  type: boolean
  inputBinding:
    prefix: -w
- id: in_verbose_print_info
  doc: verbose (<5 print additional info for diagnosis, >5 debug).
  type: boolean
  inputBinding:
    prefix: -v
- id: in_min_base_quality
  doc: min base quality [20].
  type: boolean
  inputBinding:
    prefix: -b
- id: in_minimum_mapping_quality
  doc: minimum mapping quality [40].
  type: boolean
  inputBinding:
    prefix: -m
- id: in_minimum_alignment_score
  doc: minimum alignment score (from AS-tag) [40].
  type: boolean
  inputBinding:
    prefix: -a
- id: in_max_cytosine_retention
  doc: max cytosine retention in a read [999999].
  type: boolean
  inputBinding:
    prefix: -t
- id: in_minimum_read_length
  doc: minimum read length [10].
  type: boolean
  inputBinding:
    prefix: -l
- id: in_minimum_distance_end
  doc: minimum distance to end of a read [3].
  type: boolean
  inputBinding:
    prefix: -e
- id: in_redistribution_ambiguous_yr
  doc: NO redistribution of ambiguous (Y/R) calls in SNP genotyping.
  type: boolean
  inputBinding:
    prefix: -r
- id: in_filtering_secondary_mapping
  doc: NO filtering secondary mapping.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_double_counting_cytosine
  doc: NO double counting cytosine in overlapping mate reads.
  type: boolean
  inputBinding:
    prefix: -d
- id: in_no_filtering_duplicate
  doc: NO filtering of duplicate.
  type: boolean
  inputBinding:
    prefix: -u
- id: in_filtering_improper_pair
  doc: NO filtering of improper pair.
  type: boolean
  inputBinding:
    prefix: -p
- id: in_maximum_nm_tag
  doc: maximum NM tag [999999].
  type: boolean
  inputBinding:
    prefix: -n
- id: in_error_rate_
  doc: error rate [0.001].
  type: boolean
  inputBinding:
    prefix: -E
- id: in_mutation_rate_
  doc: mutation rate [0.001].
  type: boolean
  inputBinding:
    prefix: -M
- id: in_somatic_mutation_rate
  doc: somatic mutation rate [0.001].
  type: boolean
  inputBinding:
    prefix: -x
- id: in_contamination_rate_
  doc: contamination rate [0.010].
  type: boolean
  inputBinding:
    prefix: -C
- id: in_prior_probability_heterozygous
  doc: prior probability for heterozygous variant [0.333].
  type: boolean
  inputBinding:
    prefix: -P
- id: in_prior_probability_homozygous
  doc: prior probability for homozygous variant [0.333].
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pileup_output_file
  doc: pileup output file [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_pileup_output_file)
cwlVersion: v1.1
baseCommand:
- biscuit
- pileup
