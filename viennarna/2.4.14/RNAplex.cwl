#!/usr/bin/env cwl-runner

baseCommand:
- RNAplex
class: CommandLineTool
cwlVersion: v1.0
id: rnaplex
inputs:
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: File containing the query sequence.
  id: query
  inputBinding:
    prefix: --query
  type: string
- doc: File containing the target sequence.
  id: target
  inputBinding:
    prefix: --target
  type: string
- doc: Location of the accessibility profiles.
  id: accessibility_dir
  inputBinding:
    prefix: --accessibility-dir
  type: string
- doc: Allow the reading and parsing of memory dumped opening energy file (default=off)
  id: binary
  inputBinding:
    prefix: --binary
  type: boolean
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
- doc: Rescale energy parameters to a temperature T. Default is 37C.
  id: temp
  inputBinding:
    prefix: --temp
  type: string
- doc: Maximal length of an interaction (default=`40')
  id: interaction_length
  inputBinding:
    prefix: --interaction-length
  type: long
- doc: Cost to add to each nucleotide in a duplex (default=`0')
  id: extension_cost
  inputBinding:
    prefix: --extension-cost
  type: long
- doc: Compute Tm for probes  (default=off)
  id: probe_mode
  inputBinding:
    prefix: --probe-mode
  type: boolean
- doc: Set the probe concentration for the Tm computation (default=`0.1')
  id: probe_concentration
  inputBinding:
    prefix: --probe-concentration
  type: string
- doc: Set the Na+ concentration for the Tm computation (default=`1.0')
  id: na_concentration
  inputBinding:
    prefix: --na-concentration
  type: string
- doc: Set the Mg2+ concentration for the Tm computation (default=`1.0')
  id: mg_concentration
  inputBinding:
    prefix: --mg-concentration
  type: string
- doc: Set the K+ concentration for the Tm computation (default=`1.0')
  id: k_concentration
  inputBinding:
    prefix: --k-concentration
  type: string
- doc: Set the tris+ concentration for the Tm computation (default=`1.0')
  id: tris_concentration
  inputBinding:
    prefix: --tris-concentration
  type: string
- doc: Speedup of the target search (default=`0')
  id: fast_folding
  inputBinding:
    prefix: --fast-folding
  type: long
- doc: Rescale all opening energy by a factor V (default=`1.0')
  id: scale_accessibility
  inputBinding:
    prefix: --scale-accessibility
  type: string
- doc: Calculate structures subject to constraints. (default=off)
  id: constraint
  inputBinding:
    prefix: --constraint
  type: boolean
- doc: Tells RNAplex to compute interactions based on alignments (default=off)
  id: alignment_mode
  inputBinding:
    prefix: --alignment-mode
  type: boolean
- doc: If set, RNAplex will convert all opening energy file in a directory set by
    the -a option into binary opening energy files (default=off)
  id: convert_to_bin
  inputBinding:
    prefix: --convert-to-bin
  type: boolean
- doc: Distance between target 3' ends of two consecutive duplexes (default=`0')
  id: duplex_distance
  inputBinding:
    prefix: --duplex-distance
  type: long
- doc: Minimal energy for a duplex to be returned (default=`-100000')
  id: energy_threshold
  inputBinding:
    prefix: --energy-threshold
  type: string
- doc: Draw an alignment annotated interaction from RNAplex
  id: produce_ps
  inputBinding:
    prefix: --produce-ps
  type: string
- doc: Tells how large the region around the target site should be for redrawing the
    alignment interaction (default=`1')
  id: window_length
  inputBinding:
    prefix: --WindowLength
  type: long
