class: CommandLineTool
id: RNAsnoop.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: in_constraint
  doc: Calculate the stem structure subject to
  type: boolean
  inputBinding:
    prefix: --constraint
- id: in_query
  doc: File containing the query sequence.
  type: File
  inputBinding:
    prefix: --query
- id: in_target
  doc: File containing the target sequence.
  type: File
  inputBinding:
    prefix: --target
- id: in_suffix
  doc: "Specificy the suffix that was added by RNAup to\nthe accessibility files\n\
    (default=`_u1_to_30.out')"
  type: long
  inputBinding:
    prefix: --suffix
- id: in_from_rna_pl_fold
  doc: "Specify the directory where accessibility\nprofile generated by RNAplfold\
    \ are found"
  type: Directory
  inputBinding:
    prefix: --from-RNAplfold
- id: in_alignment_mode
  doc: "Specify if RNAsnoop gets alignments or single\nsequences as input\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --alignment-mode
- id: in_fast_folding
  doc: Speedup of the target search  (default=`1')
  type: long
  inputBinding:
    prefix: --fast-folding
- id: in_extension_cost
  doc: "Cost to add to each nucleotide in a duplex\n(default=`0')"
  type: long
  inputBinding:
    prefix: --extension-cost
- id: in_minimal_right_duplex
  doc: "Minimal Right Duplex Energy\n(default=`-270')"
  type: long
  inputBinding:
    prefix: --minimal-right-duplex
- id: in_minimal_loop_energy
  doc: "Minimal Right Duplex Energy\n(default=`-280')"
  type: long
  inputBinding:
    prefix: --minimal-loop-energy
- id: in_minimal_left_duplex
  doc: "Minimal Left Duplex Energy\n(default=`-170')"
  type: long
  inputBinding:
    prefix: --minimal-left-duplex
- id: in_minimal_duplex
  doc: "Minimal Duplex Energy\n(default=`-1090')"
  type: long
  inputBinding:
    prefix: --minimal-duplex
- id: in_duplex_distance
  doc: "Distance between target 3' ends of two\nconsecutive duplexes\n(default=`2')"
  type: long
  inputBinding:
    prefix: --duplex-distance
- id: in_minimal_stem_length
  doc: "Minimal snoRNA stem length\n(default=`5')"
  type: long
  inputBinding:
    prefix: --minimal-stem-length
- id: in_maximal_stem_length
  doc: "Maximal snoRNA stem length\n(default=`120')"
  type: long
  inputBinding:
    prefix: --maximal-stem-length
- id: in_minimal_duplex_box_length
  doc: "Minimal distance between the duplex end and the\nH/ACA box\n(default=`11')"
  type: long
  inputBinding:
    prefix: --minimal-duplex-box-length
- id: in_maximal_duplex_box_length
  doc: "Maximal distance between the duplex end and the\nH/ACA box\n(default=`16')"
  type: long
  inputBinding:
    prefix: --maximal-duplex-box-length
- id: in_minimal_snorna_stem_loop_length
  doc: "Minimal number of nucleotides between the\nbeginning of stem loop and\nbeginning\
    \ of the snoRNA sequence\n(default=`1')"
  type: long
  inputBinding:
    prefix: --minimal-snoRNA-stem-loop-length
- id: in_maximal_snorna_stem_loop_length
  doc: "Maximal number of nucleotides between the\nbeginning of stem loop and\nbeginning\
    \ of the snoRNA sequence\n(default=`100000')"
  type: long
  inputBinding:
    prefix: --maximal-snoRNA-stem-loop-length
- id: in_minimal_snorna_duplex_length
  doc: "Minimal distance between duplex start and\nsnoRNA\n(default=`0')"
  type: long
  inputBinding:
    prefix: --minimal-snoRNA-duplex-length
- id: in_maximal_snorna_duplex_length
  doc: "Maximal distance between duplex start and\nsnoRNA\n(default=`0')"
  type: long
  inputBinding:
    prefix: --maximal-snoRNA-duplex-length
- id: in_minimal_duplex_stem_energy
  doc: "Minimal duplex stem energy\n(default=`-1370')"
  type: long
  inputBinding:
    prefix: --minimal-duplex-stem-energy
- id: in_minimal_total_energy
  doc: "Minimal total energy\n(default=`100000')"
  type: long
  inputBinding:
    prefix: --minimal-total-energy
- id: in_maximal_stem_asymmetry
  doc: "Maximal snoRNA stem asymmetry\n(default=`30')"
  type: long
  inputBinding:
    prefix: --maximal-stem-asymmetry
- id: in_minimal_lower_stem_energy
  doc: "Minimal lower stem energy\n(default=`100000')"
  type: long
  inputBinding:
    prefix: --minimal-lower-stem-energy
- id: in_energy_threshold
  doc: "Maximal energy difference between the mfe and\nthe desired suboptimal\n(default=`-1')"
  type: long
  inputBinding:
    prefix: --energy-threshold
- id: in_produce_ps
  doc: "Draw annotated 2D structures for a list of\ndot-bracket structures\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --produce-ps
- id: in_output_directory
  doc: Set where the generated figures should be
  type: string
  inputBinding:
    prefix: --output_directory
- id: in_direct_redraw
  doc: "Outputs 2D interactions concurrently with the\ninteraction calculation for\
    \ each suboptimal\ninteraction. The -I option should be\npreferred.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --direct-redraw
- id: in_from_rna_up
  doc: "Specify the directory where accessibility\nprofiles generated by RNAup are\
    \ found"
  type: Directory
  inputBinding:
    prefix: --from-RNAup
- id: in_rna_snoop
  doc: -L, --alignmentLength=INT     Limit the extent of the interactions to L
  type: string
  inputBinding:
    position: 0
- id: in_nucleotides
  doc: (default=`25')
  type: string
  inputBinding:
    position: 1
- id: in_constraints_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 2
- id: in_stored
  doc: (default=`./')
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RNAsnoop