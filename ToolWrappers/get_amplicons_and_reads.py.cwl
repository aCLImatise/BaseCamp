class: CommandLineTool
id: get_amplicons_and_reads.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output_dir
  doc: "Specify output directory for amplicons and reads.\n[default: .]"
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_score_type
  doc: "Value to use from primer hits file to determine a\ngiven primer's amplification\
    \ success.  Valid choices\nare weighted_score, overall_mismatches, tp_mismatches.\n\
    Gibbs energy scores not currently implemented\n[default: weighted_score]"
  type: File
  inputBinding:
    prefix: --score_type
- id: in_score_threshold
  doc: "If primer has score at or below this parameter, the\nprimer amplification\
    \ is considered to be successful\n[default: 1.0]"
  type: double
  inputBinding:
    prefix: --score_threshold
- id: in_min_seq_len
  doc: "Sets minimum sequence length of amplicon to be\nincluded in the output amplicon\
    \ file [default: 100]"
  type: long
  inputBinding:
    prefix: --min_seq_len
- id: in_read_direction
  doc: "Direction of reads generated. Can be forward (f),\nreverse (r), or paired\
    \ end (p).  [default: r]"
  type: string
  inputBinding:
    prefix: --read_direction
- id: in_read_len
  doc: "Length of reads to generate.  Should be set according\nto sequencing technology/reagents\
    \ used.  [default:\n250]"
  type: long
  inputBinding:
    prefix: --read_len
- id: in_primer_hits
  doc: "Target primer hits files.  Separate multiple files\nwith a colon. [REQUIRED]"
  type: string
  inputBinding:
    prefix: --primer_hits
- id: in_fast_a_fps
  doc: "Fasta filepaths.  Must match the fasta files used in\nthe analyze_primers\
    \ module.  Multiple fasta files can\nbe passed, separated with a colon.  Order\
    \ not\nimportant. [REQUIRED]\n"
  type: string
  inputBinding:
    prefix: --fasta_fps
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Specify output directory for amplicons and reads.\n[default: .]"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- get_amplicons_and_reads.py
