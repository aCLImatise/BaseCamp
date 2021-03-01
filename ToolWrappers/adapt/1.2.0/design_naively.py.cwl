class: CommandLineTool
id: design_naively.py.cwl
inputs:
- id: in_window_size
  doc: "Output guide(s) within each window (sliding along the\nalignment) of this\
    \ length"
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_guide_length
  doc: Length of guide to construct
  type: long?
  inputBinding:
    prefix: --guide-length
- id: in_guide_mismatches
  doc: "Allow for this number of mismatches when determining\nwhether a guide covers\
    \ a sequence"
  type: long?
  inputBinding:
    prefix: --guide-mismatches
- id: in_best_n
  doc: Find the best BEST_N guides in each window
  type: string?
  inputBinding:
    prefix: --best-n
- id: in_do_not_allow_gu_pairing
  doc: "When determining whether a guide binds to a region of\ntarget sequence, do\
    \ not count G-U (wobble) base pairs\nas matching. Default is to tolerate G-U pairing:\n\
    namely, A in an output guide sequence matches G in the\ntarget and C in an output\
    \ guide sequence matches T in\nthe target (since the synthesized guide is the\
    \ reverse\ncomplement of the output guide sequence)"
  type: boolean?
  inputBinding:
    prefix: --do-not-allow-gu-pairing
- id: in_skip_gaps
  doc: "If this fraction or more of sequences at a position\ncontain a gap character,\
    \ do not design a guide there"
  type: string?
  inputBinding:
    prefix: --skip-gaps
- id: in_ref_seq
  doc: "The label used in the FASTA file of the reference\nsequence to design guides\
    \ based on sequence diversity;\nrequired for diversity method"
  type: File?
  inputBinding:
    prefix: --ref-seq
- id: in_no_consensus
  doc: "If set, do not use the consensus method to determine\nguides; otherwise, will\
    \ use the consensus method"
  type: boolean?
  inputBinding:
    prefix: --no-consensus
- id: in_no_mode
  doc: "If set, do not use the mode method to determine\nguides; otherwise, will use\
    \ the mode method"
  type: boolean?
  inputBinding:
    prefix: --no-mode
- id: in_diversity
  doc: "A string of which diversity method to use to determine\nguides ('entropy');\
    \ None (default) to not use a\ndiversity method. 'entropy' will calculate the\
    \ average\nper position entropy of each potential guide, then\nreturn the guides\
    \ at the positions with the lowest\nentropy; nucleotides are determined by the\
    \ reference\nsequence"
  type: string?
  inputBinding:
    prefix: --diversity
- id: in_require_flanking_five
  doc: "Require the given sequence on the 5' protospacer\nflanking site (PFS) of each\
    \ designed guide; this\ntolerates ambiguity in the sequence (e.g., 'H'\nrequires\
    \ 'A', 'C', or 'T', or, equivalently, avoids\nguides flanked by 'G'). Note that\
    \ this is the 5' end\nin the target sequence (not the spacer sequence)."
  type: long?
  inputBinding:
    prefix: --require-flanking5
- id: in_require_flanking_three
  doc: "Require the given sequence on the 3' protospacer\nflanking site (PFS) of each\
    \ designed guide; this\ntolerates ambiguity in the sequence (e.g., 'H'\nrequires\
    \ 'A', 'C', or 'T', or, equivalently, avoids\nguides flanked by 'G'). Note that\
    \ this is the 3' end\nin the target sequence (not the spacer sequence)."
  type: long?
  inputBinding:
    prefix: --require-flanking3
- id: in_debug
  doc: Debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_in_fast_a
  doc: Path to input FASTA (aligned)
  type: string
  inputBinding:
    position: 0
- id: in_out_tsv
  doc: Path to TSV file to which to write the output
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/adapt:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- design_naively.py
