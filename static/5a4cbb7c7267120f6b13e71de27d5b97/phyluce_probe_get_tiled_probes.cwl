class: CommandLineTool
id: phyluce_probe_get_tiled_probes.cwl
inputs:
- id: in_probe_prefix
  doc: "DESIGNER --design DESIGN\n[--probe-length LENGTH]\n[--tiling-density DENSITY]\n\
    [--overlap {middle,flush-left}]\n[--probe-bed PROBE_BED]\n[--locus-bed LOCUS_BED]\
    \ [--masking MASK]\n[--do-not-remove-ambiguous]\n[--remove-gc]\n[--start-index\
    \ START_INDEX]\n[--two-probes]"
  type: long
  inputBinding:
    prefix: --probe-prefix
- id: in_input
  doc: The path to the input file
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: The path to the output file
  type: File
  inputBinding:
    prefix: --output
- id: in_design
  doc: The design name.
  type: string
  inputBinding:
    prefix: --design
- id: in_probe_length
  doc: The length of the probes sequence to design
  type: long
  inputBinding:
    prefix: --probe-length
- id: in_tiling_density
  doc: The tiling density
  type: string
  inputBinding:
    prefix: --tiling-density
- id: in_overlap
  doc: The method of tiling
  type: string
  inputBinding:
    prefix: --overlap
- id: in_probe_bed
  doc: "The path to an output file for outputting the probe\ncoordinates in BED format"
  type: File
  inputBinding:
    prefix: --probe-bed
- id: in_locus_bed
  doc: "The path to an output file for outputting the locus\ncoordinates in BED format"
  type: File
  inputBinding:
    prefix: --locus-bed
- id: in_masking
  doc: "The maximum frequency of per-probe masking allowed\ncontaining the sequence"
  type: string
  inputBinding:
    prefix: --masking
- id: in_do_not_remove_ambiguous
  doc: "Do not remove loci with probes containing ambiguous\nbases"
  type: boolean
  inputBinding:
    prefix: --do-not-remove-ambiguous
- id: in_remove_gc
  doc: Remove loci with GC content outside 30 <= GC <= 70
  type: boolean
  inputBinding:
    prefix: --remove-gc
- id: in_start_index
  doc: The starting UCE index number to use.
  type: long
  inputBinding:
    prefix: --start-index
- id: in_two_probes
  doc: Design only two probes for a given locus.
  type: boolean
  inputBinding:
    prefix: --two-probes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The path to the output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_probe_bed
  doc: "The path to an output file for outputting the probe\ncoordinates in BED format"
  type: File
  outputBinding:
    glob: $(inputs.in_probe_bed)
- id: out_locus_bed
  doc: "The path to an output file for outputting the locus\ncoordinates in BED format"
  type: File
  outputBinding:
    glob: $(inputs.in_locus_bed)
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_tiled_probes
