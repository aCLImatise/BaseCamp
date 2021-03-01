class: CommandLineTool
id: SSAKE.cwl
inputs:
- id: in_file_containing_reads
  doc: "File containing all the [paired (-p 1)] reads (required)\nWith -p 1:"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_fasta_file_containing_sequence
  doc: Fasta file containing unpaired sequence reads (optional)
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_minimum_depth_coverage
  doc: "Minimum depth of coverage allowed for contigs (e.g. -w 1 = process all reads\
    \ [v3.7 behavior], required, recommended -w 5)\n*The assembly will stop when 50+\
    \ contigs with coverage < -w have been seen.*"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_fasta_file_containing_sequences
  doc: "Fasta file containing sequences to use as seeds exclusively (specify only\
    \ if different from read set, optional)\n-i Independent (de novo) assembly  i.e\
    \ Targets used to recruit reads for de novo assembly, not guide/seed reference-based\
    \ assemblies (-i 1 = yes (default), 0 = no, optional)\n-j Target sequence word\
    \ size to hash (default -j 15)\n-u Apply read space restriction to seeds while\
    \ -s option in use (-u 1 = yes, default = no, optional)"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_minimum_number_overlapping
  doc: Minimum number of overlapping bases with the seed/contig during overhang consensus
    build up (default -m 20)
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_minimum_number_reads
  doc: Minimum number of reads needed to call a base during an extension (default
    -o 2)
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_minimum_base_ratio
  doc: Minimum base ratio used to accept a overhang consensus base (default -r 0.7)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_trim_when_exhausted
  doc: Trim up to -t base(s) on the contig end when all possibilities have been exhausted
    for an extension (default -t 0, optional)
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_track_base_coverage
  doc: Track base coverage and read position for each contig (default -c 0, optional)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_ignore_read_mapping
  doc: Ignore read mapping to consensus (-y 1 = yes, default = no, optional)
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_base_name_your
  doc: Base name for your output files (optional)
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_minimum_contig_size
  doc: Minimum contig size to track base coverage and read position (default -z 100,
    optional)
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_break_tie_pick
  doc: Break tie when no consensus base at position, pick random base (-q 1 = yes,
    default = no, optional)
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_pairedend_reads_used
  doc: Paired-end reads used? (-p 1 = yes, default = no, optional)
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_runs_verbose_mode
  doc: Runs in verbose mode (-v 1 = yes, default = no, optional)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_error_allowed_mean
  doc: Error (%) allowed on mean distance   e.g. -e 0.75  == distance +/- 75% (default
    -e 0.75, optional)
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_minimum_number_links
  doc: Minimum number of links (read pairs) to compute scaffold (default -k 5, optional)
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_maximum_link_ratio
  doc: Maximum link ratio between two best contig pairs *higher values lead to least
    accurate scaffolding* (default -a 0.3, optional)
  type: boolean?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SSAKE
