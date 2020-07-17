class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/biscuit_pileup.cwl
inputs:
- id: region_optional_specified
  doc: region (optional, if not specified the whole bam will be processed).
  type: boolean
  inputBinding:
    prefix: -g
- id: number_of_threads
  doc: number of threads [3].
  type: boolean
  inputBinding:
    prefix: -q
- id: nomeseq_mode
  doc: NOMe-seq mode [off]
  type: boolean
  inputBinding:
    prefix: -N
- id: somatic_mode_must
  doc: somatic mode, must also provide -T (tumor BAM) and -I (normal BAM) arguments
    [off]
  type: boolean
  inputBinding:
    prefix: -S
- id: somatic_mode_tumor
  doc: somatic mode, tumor BAM
  type: boolean
  inputBinding:
    prefix: -T
- id: somatic_mode_normal
  doc: somatic mode, normal BAM
  type: boolean
  inputBinding:
    prefix: -I
- id: pileup_output_file
  doc: pileup output file [stdout]
  type: boolean
  inputBinding:
    prefix: -o
- id: pileup_statistics_output
  doc: pileup statistics output prefix [same as output]
  type: boolean
  inputBinding:
    prefix: -w
- id: verbose_print_additional
  doc: verbose (<5 print additional info for diagnosis, >5 debug).
  type: boolean
  inputBinding:
    prefix: -v
- id: min_base_quality
  doc: min base quality [20].
  type: boolean
  inputBinding:
    prefix: -b
- id: minimum_mapping_quality
  doc: minimum mapping quality [40].
  type: boolean
  inputBinding:
    prefix: -m
- id: minimum_alignment_score
  doc: minimum alignment score (from AS-tag) [40].
  type: boolean
  inputBinding:
    prefix: -a
- id: max_cytosine_retention
  doc: max cytosine retention in a read [999999].
  type: boolean
  inputBinding:
    prefix: -t
- id: minimum_read_length
  doc: minimum read length [10].
  type: boolean
  inputBinding:
    prefix: -l
- id: minimum_distance_end
  doc: minimum distance to end of a read [3].
  type: boolean
  inputBinding:
    prefix: -e
- id: redistribution_ambiguous_yr
  doc: NO redistribution of ambiguous (Y/R) calls in SNP genotyping.
  type: boolean
  inputBinding:
    prefix: -r
- id: filtering_secondary_mapping
  doc: NO filtering secondary mapping.
  type: boolean
  inputBinding:
    prefix: -c
- id: double_counting_cytosine
  doc: NO double counting cytosine in overlapping mate reads.
  type: boolean
  inputBinding:
    prefix: -d
- id: no_filtering_duplicate
  doc: NO filtering of duplicate.
  type: boolean
  inputBinding:
    prefix: -u
- id: filtering_improper_pair
  doc: NO filtering of improper pair.
  type: boolean
  inputBinding:
    prefix: -p
- id: maximum_nm_tag
  doc: maximum NM tag [999999].
  type: boolean
  inputBinding:
    prefix: -n
- id: error_rate_
  doc: error rate [0.001].
  type: boolean
  inputBinding:
    prefix: -E
- id: mutation_rate_
  doc: mutation rate [0.001].
  type: boolean
  inputBinding:
    prefix: -M
- id: somatic_mutation_rate
  doc: somatic mutation rate [0.001].
  type: boolean
  inputBinding:
    prefix: -x
- id: contamination_rate_
  doc: contamination rate [0.010].
  type: boolean
  inputBinding:
    prefix: -C
- id: prior_probability_heterozygous
  doc: prior probability for heterozygous variant [0.333].
  type: boolean
  inputBinding:
    prefix: -P
- id: prior_probability_homozygous
  doc: prior probability for homozygous variant [0.333].
  type: boolean
  inputBinding:
    prefix: -Q
- id: pile_up
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bam_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- biscuit
- pileup
