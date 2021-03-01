class: CommandLineTool
id: RNAplex.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_target
  doc: File containing the target sequence.
  type: File?
  inputBinding:
    prefix: --target
- id: in_accessibility_dir
  doc: Location of the accessibility profiles.
  type: string?
  inputBinding:
    prefix: --accessibility-dir
- id: in_binary
  doc: "Allow the reading and parsing of memory dumped\nopening energy file\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --binary
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_temp
  doc: "Rescale energy parameters to a temperature T.\nDefault is 37C."
  type: long?
  inputBinding:
    prefix: --temp
- id: in_interaction_length
  doc: "Maximal length of an interaction\n(default=`40')"
  type: long?
  inputBinding:
    prefix: --interaction-length
- id: in_extension_cost
  doc: "Cost to add to each nucleotide in a duplex\n(default=`0')"
  type: long?
  inputBinding:
    prefix: --extension-cost
- id: in_probe_mode
  doc: Compute Tm for probes  (default=off)
  type: boolean?
  inputBinding:
    prefix: --probe-mode
- id: in_probe_concentration
  doc: "Set the probe concentration for the Tm\ncomputation\n(default=`0.1')"
  type: double?
  inputBinding:
    prefix: --probe-concentration
- id: in_na_concentration
  doc: Set the Na+ concentration for the Tm
  type: string?
  inputBinding:
    prefix: --na-concentration
- id: in_mg_concentration
  doc: Set the Mg2+ concentration for the Tm
  type: long?
  inputBinding:
    prefix: --mg-concentration
- id: in_k_concentration
  doc: "Set the K+ concentration for the Tm computation\n(default=`1.0')"
  type: double?
  inputBinding:
    prefix: --k-concentration
- id: in_tris_concentration
  doc: "Set the tris+ concentration for the Tm\ncomputation\n(default=`1.0')"
  type: double?
  inputBinding:
    prefix: --tris-concentration
- id: in_fast_folding
  doc: "Speedup of the target search\n(default=`0')"
  type: long?
  inputBinding:
    prefix: --fast-folding
- id: in_scale_accessibility
  doc: "Rescale all opening energy by a factor V\n(default=`1.0')"
  type: double?
  inputBinding:
    prefix: --scale-accessibility
- id: in_constraint
  doc: "Calculate structures subject to constraints.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --constraint
- id: in_alignment_mode
  doc: Tells RNAplex to compute interactions based on
  type: boolean?
  inputBinding:
    prefix: --alignment-mode
- id: in_convert_to_bin
  doc: "If set, RNAplex will convert all opening energy\nfile in a directory set by\
    \ the -a option into\nbinary opening energy files\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --convert-to-bin
- id: in_duplex_distance
  doc: "Distance between target 3' ends of two\nconsecutive duplexes\n(default=`0')"
  type: long?
  inputBinding:
    prefix: --duplex-distance
- id: in_energy_threshold
  doc: "Minimal energy for a duplex to be returned\n(default=`-100000')"
  type: long?
  inputBinding:
    prefix: --energy-threshold
- id: in_produce_ps
  doc: Draw an alignment annotated interaction from
  type: string?
  inputBinding:
    prefix: --produce-ps
- id: in_program
  doc: -q, --query=STRING            File containing the query sequence.
  type: string
  inputBinding:
    position: 0
- id: in_alignments
  doc: (default=off)
  type: string
  inputBinding:
    position: 2
- id: in_rna_plex
  doc: -L, --WindowLength=INT        Tells how large the region around the target
  type: string
  inputBinding:
    position: 0
- id: in_interaction
  doc: (default=`1')
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- RNAplex
