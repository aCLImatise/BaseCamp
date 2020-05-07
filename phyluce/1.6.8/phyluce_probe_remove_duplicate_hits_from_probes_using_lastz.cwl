class: CommandLineTool
id: phyluce_probe_remove_duplicate_hits_from_probes_using_lastz.cwl
inputs:
- id: fast_a
  doc: The fasta file to screen
  type: string
  inputBinding:
    prefix: --fasta
- id: last_z
  doc: The lastz file to use
  type: string
  inputBinding:
    prefix: --lastz
- id: probe_prefix
  doc: The prefix (e.g. "uce-") added to all probes designed
  type: string
  inputBinding:
    prefix: --probe-prefix
- id: probe_regex
  doc: The regular expression to use for matching probes
  type: string
  inputBinding:
    prefix: --probe-regex
- id: probe_bed
  doc: The path to a file contaning the probe coordinates in BED format
  type: string
  inputBinding:
    prefix: --probe-bed
- id: locus_bed
  doc: The path to a file contaning the locus coordinates in BED format
  type: string
  inputBinding:
    prefix: --locus-bed
- id: long
  doc: If the lastz output is the longfield format
  type: boolean
  inputBinding:
    prefix: --long
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_remove_duplicate_hits_from_probes_using_lastz
