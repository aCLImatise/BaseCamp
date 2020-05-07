class: CommandLineTool
id: RNAplex.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: query
  doc: File containing the query sequence.
  type: string
  inputBinding:
    prefix: --query
- id: target
  doc: File containing the target sequence.
  type: string
  inputBinding:
    prefix: --target
- id: accessibility_dir
  doc: Location of the accessibility profiles.
  type: string
  inputBinding:
    prefix: --accessibility-dir
- id: binary
  doc: Allow the reading and parsing of memory dumped opening energy file (default=off)
  type: boolean
  inputBinding:
    prefix: --binary
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
- id: temp
  doc: Rescale energy parameters to a temperature T. Default is 37C.
  type: string
  inputBinding:
    prefix: --temp
- id: interaction_length
  doc: Maximal length of an interaction (default=`40')
  type: long
  inputBinding:
    prefix: --interaction-length
- id: extension_cost
  doc: Cost to add to each nucleotide in a duplex (default=`0')
  type: long
  inputBinding:
    prefix: --extension-cost
- id: probe_mode
  doc: Compute Tm for probes  (default=off)
  type: boolean
  inputBinding:
    prefix: --probe-mode
- id: probe_concentration
  doc: Set the probe concentration for the Tm computation (default=`0.1')
  type: string
  inputBinding:
    prefix: --probe-concentration
- id: na_concentration
  doc: Set the Na+ concentration for the Tm computation (default=`1.0')
  type: string
  inputBinding:
    prefix: --na-concentration
- id: mg_concentration
  doc: Set the Mg2+ concentration for the Tm computation (default=`1.0')
  type: string
  inputBinding:
    prefix: --mg-concentration
- id: k_concentration
  doc: Set the K+ concentration for the Tm computation (default=`1.0')
  type: string
  inputBinding:
    prefix: --k-concentration
- id: tris_concentration
  doc: Set the tris+ concentration for the Tm computation (default=`1.0')
  type: string
  inputBinding:
    prefix: --tris-concentration
- id: fast_folding
  doc: Speedup of the target search (default=`0')
  type: long
  inputBinding:
    prefix: --fast-folding
- id: scale_accessibility
  doc: Rescale all opening energy by a factor V (default=`1.0')
  type: string
  inputBinding:
    prefix: --scale-accessibility
- id: constraint
  doc: Calculate structures subject to constraints. (default=off)
  type: boolean
  inputBinding:
    prefix: --constraint
- id: alignment_mode
  doc: Tells RNAplex to compute interactions based on alignments (default=off)
  type: boolean
  inputBinding:
    prefix: --alignment-mode
- id: convert_to_bin
  doc: If set, RNAplex will convert all opening energy file in a directory set by
    the -a option into binary opening energy files (default=off)
  type: boolean
  inputBinding:
    prefix: --convert-to-bin
- id: duplex_distance
  doc: Distance between target 3' ends of two consecutive duplexes (default=`0')
  type: long
  inputBinding:
    prefix: --duplex-distance
- id: energy_threshold
  doc: Minimal energy for a duplex to be returned (default=`-100000')
  type: string
  inputBinding:
    prefix: --energy-threshold
- id: produce_ps
  doc: Draw an alignment annotated interaction from RNAplex
  type: string
  inputBinding:
    prefix: --produce-ps
- id: window_length
  doc: Tells how large the region around the target site should be for redrawing the
    alignment interaction (default=`1')
  type: long
  inputBinding:
    prefix: --WindowLength
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAplex
