class: CommandLineTool
id: treebest_phyml.cwl
inputs:
- id: in_build_opt_loglk
  doc: build | opt | loglk | dist                          [build]
  type: string
  inputBinding:
    prefix: -t
- id: in_input_nucleotide_alignment
  doc: the input is a nucleotide alignment
  type: boolean
  inputBinding:
    prefix: -n
- id: in_print_out_statistics
  doc: print out some statistics
  type: boolean
  inputBinding:
    prefix: -s
- id: in_mask_lowscoring_segments
  doc: do not mask low-scoring segments
  type: boolean
  inputBinding:
    prefix: -N
- id: in_collapse_alternative_splicing
  doc: collapse alternative splicing
  type: boolean
  inputBinding:
    prefix: -g
- id: in_number_bootstraps_slow
  doc: number of bootstraps (slow)                             [0]
  type: long
  inputBinding:
    prefix: -b
- id: in_write_output_file
  doc: write output to file                               [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: in_quality_cutoff_
  doc: quality cut-off                                        [15]
  type: long
  inputBinding:
    prefix: -F
- id: in_jc_kp_f
  doc: "nt: JC69 | K2P | F81 | HKY | F84 | TN93 | GTR         [HKY]\naa: JTT | MtREV\
    \ | Dayhoff | WAG                       [WAG]"
  type: long
  inputBinding:
    prefix: -m
- id: in_number_relative_substitution
  doc: number of relative substitution rate categories         [1]
  type: long
  inputBinding:
    prefix: -c
- id: in_transversiontransition_ratio_estimatinig
  doc: "|e  transversion/transition ratio, 'e' for estimatinig      [e]"
  type: double
  inputBinding:
    prefix: -k
- id: in_alpha_parameter_gamma
  doc: '|e  alpha parameter for Gamma distribution                [1.0]'
  type: double
  inputBinding:
    prefix: -a
- id: in_proportion_invariable_sites
  doc: '|e  proportion of invariable sites                          [0]'
  type: double
  inputBinding:
    prefix: -i
- id: in_use_species_tree
  doc: use a species tree to guide tree building
  type: boolean
  inputBinding:
    prefix: -S
- id: in_species_tree_
  doc: species tree                         [TreeFam species tree]
  type: File
  inputBinding:
    prefix: -f
- id: in_duplication_probability_
  doc: duplication probability                              [0.15]
  type: double
  inputBinding:
    prefix: -d
- id: in_probability_loss_speciation
  doc: probability of a loss following a speciation         [0.10]
  type: double
  inputBinding:
    prefix: -l
- id: in_probability_loss_duplication
  doc: probability of a loss following a duplication        [0.20]
  type: double
  inputBinding:
    prefix: -L
- id: in_constraining_tree_
  doc: constraining tree                                    [NULL]
  type: File
  inputBinding:
    prefix: -C
- id: in_prob_presence_inconsistent
  doc: prob. of the presence of an inconsistent branch      [0.01]
  type: double
  inputBinding:
    prefix: -p
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_output_file
  doc: write output to file                               [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_write_output_file)
cwlVersion: v1.1
baseCommand:
- treebest
- phyml
