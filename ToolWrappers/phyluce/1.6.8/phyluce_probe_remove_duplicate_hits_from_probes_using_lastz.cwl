class: CommandLineTool
id: phyluce_probe_remove_duplicate_hits_from_probes_using_lastz.cwl
inputs:
- id: in_fast_a
  doc: The fasta file to screen
  type: File
  inputBinding:
    prefix: --fasta
- id: in_last_z
  doc: The lastz file to use
  type: File
  inputBinding:
    prefix: --lastz
- id: in_probe_prefix
  doc: The prefix (e.g. "uce-") added to all probes designed
  type: string
  inputBinding:
    prefix: --probe-prefix
- id: in_probe_regex
  doc: The regular expression to use for matching probes
  type: string
  inputBinding:
    prefix: --probe-regex
- id: in_probe_bed
  doc: "The path to a file contaning the probe coordinates in\nBED format"
  type: File
  inputBinding:
    prefix: --probe-bed
- id: in_locus_bed
  doc: "The path to a file contaning the locus coordinates in\nBED format"
  type: File
  inputBinding:
    prefix: --locus-bed
- id: in_long
  doc: If the lastz output is the longfield format
  type: boolean
  inputBinding:
    prefix: --long
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_probe_remove_duplicate_hits_from_probes_using_lastz
