class: CommandLineTool
id: phyluce_probe_get_tiled_probe_from_multiple_inputs.cwl
inputs:
- id: fast_as
  doc: The folder of fasta files from which to design probes
  type: string
  inputBinding:
    prefix: --fastas
- id: multi_fast_a_output
  doc: The output config file from query_multi_fasta_table.py
  type: string
  inputBinding:
    prefix: --multi-fasta-output
- id: output
  doc: The file in which to store the output
  type: string
  inputBinding:
    prefix: --output
- id: probe_prefix
  doc: The prefix (e.g. "uce-") to add to all probes designed
  type: string
  inputBinding:
    prefix: --probe-prefix
- id: designer
  doc: Your last name (to indicate who designed the probes)
  type: string
  inputBinding:
    prefix: --designer
- id: design
  doc: The design name.
  type: string
  inputBinding:
    prefix: --design
- id: probe_length
  doc: The length of the probes sequence to design
  type: long
  inputBinding:
    prefix: --probe-length
- id: tiling_density
  doc: The tiling density
  type: string
  inputBinding:
    prefix: --tiling-density
- id: overlap
  doc: The method of tiling
  type: string
  inputBinding:
    prefix: --overlap
- id: probe_bed
  doc: The path to an output file for outputting the probe coordinates in BED format
  type: string
  inputBinding:
    prefix: --probe-bed
- id: locus_bed
  doc: The path to an output file for outputting the locus coordinates in BED format
  type: string
  inputBinding:
    prefix: --locus-bed
- id: masking
  doc: The maximum frequency of per-probe masking allowed containing the sequence
  type: string
  inputBinding:
    prefix: --masking
- id: do_not_remove_ambiguous
  doc: Do not remove loci with probes containing ambiguous bases
  type: boolean
  inputBinding:
    prefix: --do-not-remove-ambiguous
- id: remove_gc
  doc: Remove loci with GC content outside 30 <= GC <= 70
  type: boolean
  inputBinding:
    prefix: --remove-gc
- id: start_index
  doc: The starting UCE index number to use.
  type: string
  inputBinding:
    prefix: --start-index
- id: two_probes
  doc: Design only two probes for a given locus.
  type: boolean
  inputBinding:
    prefix: --two-probes
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_tiled_probe_from_multiple_inputs
