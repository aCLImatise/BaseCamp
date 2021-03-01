class: CommandLineTool
id: spliced_bam2gff.cwl
inputs:
- id: in_write_output_partitioned
  doc: Write output partitioned into "loci" to this directory. Turns of output to
    stdout.
  type: Directory?
  inputBinding:
    prefix: -L
- id: in_input_is_minimap
  doc: Input is from minimap2.
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_discard_secondary_alignments
  doc: Do NOT discard secondary and supplementary alignments.
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_print_out_version
  doc: Print out version.
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_bundle_together_loci
  doc: Bundle together loci in batches with at least this size. (default -1)
  type: long?
  inputBinding:
    prefix: -b
- id: in_classify_deletions_larger
  doc: Classify all deletions larger than this as introns (-1 means off). (default
    -1)
  type: long?
  inputBinding:
    prefix: -d
- id: in_use_strand_tag
  doc: Use strand tag as feature orientation then read strand if not available.
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_use_read_strand
  doc: Use read strand (from BAM flag) as feature orientation.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_number_cores_use
  doc: "Number of cores to use. (default 8)\n"
  type: long?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_output_partitioned
  doc: Write output partitioned into "loci" to this directory. Turns of output to
    stdout.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_write_output_partitioned)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spliced_bam2gff:1.3--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- spliced_bam2gff
