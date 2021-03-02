class: CommandLineTool
id: olap_from_seeds.cwl
inputs:
- id: in_asymmetric_overlaps_ie
  doc: "Asymmetric overlaps, i.e., only output overlaps with\na_iid < b_iid"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_output_binary_overlap
  doc: Output binary overlap messages
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_output_corrections_file
  doc: Output corrections to file <f>
  type: File?
  inputBinding:
    prefix: -c
- id: in_use_clear_range
  doc: "Use clear range <s> for reads.  Default value is\nAS_READ_CLEAR_LATEST"
  type: string?
  inputBinding:
    prefix: -C
- id: in_set_keep_flag
  doc: "Set keep flag in correction record on end of frags with less\nthan <n> olaps"
  type: string?
  inputBinding:
    prefix: -d
- id: in_extend_fragments_range
  doc: Extend fragments beyond 3' clear range
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_read_seeds_sorted
  doc: "Read seeds from sorted file <f>.  Format is:\n<a_iid> <b_iid> [f\\r] <a_pos>\
    \ <b_pos> <ct> <len>\nadditional entries on line are ignored.\nEntries are not\
    \ reversed, i.e., a/b seed does NOT\nautomatically generate the b/a seed, too"
  type: File?
  inputBinding:
    prefix: -F
- id: in_do_partial_overlaps
  doc: Do partial overlaps (i.e., local alignments)
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_prevent_correction_have
  doc: Prevent correction when have an exact match of <n> bases
  type: string?
  inputBinding:
    prefix: -k
- id: in_send_overlaps_file
  doc: Send overlaps to file or store <f>
  type: File?
  inputBinding:
    prefix: -o
- id: in_use_haplotype_counts
  doc: Don't use haplotype counts to correct
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_read_seeds_binary
  doc: Read seeds from binary overlap store <f>
  type: string?
  inputBinding:
    prefix: -S
- id: in_use_n_pthreads
  doc: Use <n> p-threads
  type: string?
  inputBinding:
    prefix: -t
- id: in_set_verbose_level
  doc: Set verbose level to <n>; higher is more debugging output
  type: string?
  inputBinding:
    prefix: -v
- id: in_require_exact_match
  doc: "Require <n> exact match bases around an error (combined count\non both sides)\
    \ to vote to change a base"
  type: string?
  inputBinding:
    prefix: -V
- id: in_use_correlated_differences
  doc: Use correlated differences to disqualify overlaps
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_prevent_correction_first
  doc: "Don't prevent correction on first and last <n> bp of exact match\nregions\
    \ (whose length is set by -k option)."
  type: long?
  inputBinding:
    prefix: -x
- id: in_expert_bit_options
  doc: "Expert bit options.  <h> is a hexadecimal constant:\n(<h> & 0x1) == 1 forces\
    \ old banded forward homopoly alignment\n(<h> & 0x2) == 1 forces faster non-homopoly\
    \ forward alignment\n(<h> & 0x4) == 1 forces faster non-homopoly reverse alignment"
  type: long?
  inputBinding:
    prefix: -X
- id: in_allow_error_rate
  doc: "Allow max error rate of <x> in alignments (e.g., 0.03 for 3% error)\nValue\
    \ cannot exceed  0.060"
  type: long?
  inputBinding:
    prefix: -y
- id: in_try_correct_errors
  doc: Do NOT try to correct read errors
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_be_hp
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -behp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_corrections_file
  doc: Output corrections to file <f>
  type: File?
  outputBinding:
    glob: $(inputs.in_output_corrections_file)
hints: []
cwlVersion: v1.1
baseCommand:
- olap-from-seeds
