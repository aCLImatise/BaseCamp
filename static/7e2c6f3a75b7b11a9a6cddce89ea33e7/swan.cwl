class: CommandLineTool
id: swan.cwl
inputs:
- id: in_output_file_name
  doc: output file name (STDOUT)
  type: File?
  inputBinding:
    prefix: -o
- id: in_fasta_file_reference
  doc: fasta file for reference
  type: File?
  inputBinding:
    prefix: -r
- id: in_fasta_file_query
  doc: fasta file for query
  type: File?
  inputBinding:
    prefix: -q
- id: in_rs
  doc: reference string to align (displayed on top)
  type: string?
  inputBinding:
    prefix: -rs
- id: in_qs
  doc: query string to align (displayed below)
  type: string?
  inputBinding:
    prefix: -qs
- id: in_q_len
  doc: only consider sequences at least this long
  type: long?
  inputBinding:
    prefix: -q-len
- id: in_r_len
  doc: only consider sequences at least this long
  type: long?
  inputBinding:
    prefix: -r-len
- id: in_q_string
  doc: e.g. hsa, mmu; only matching identifiers are considered
  type: string?
  inputBinding:
    prefix: -q-string
- id: in_r_string
  doc: e.g. hsa, mmu; only matching identifiers are considered
  type: string?
  inputBinding:
    prefix: -r-string
- id: in_identity
  doc: require matches with at least <int> identity (0-100)
  type: long?
  inputBinding:
    prefix: -identity
- id: in_index
  doc: k-mer size to build index on (suggest 8 to 12; filters on k-mer match!)
  type: long?
  inputBinding:
    prefix: -index
- id: in_n_seeds
  doc: require <int> independent k-mer hits for a match to be considered (overlap
    not allowed)
  type: long?
  inputBinding:
    prefix: -n-seeds
- id: in_w_seeds
  doc: require two seeds spanning at least <int> bases (overlap allowed)
  type: long?
  inputBinding:
    prefix: -w-seeds
- id: in_grep
  doc: output sequences that match the reference (requires -identity)
  type: boolean?
  inputBinding:
    prefix: --grep
- id: in_grep_v
  doc: output sequences (see -grepv-o) that do not match the reference (requires -identity)
  type: boolean?
  inputBinding:
    prefix: --grepv
- id: in_grep_v_o
  doc: output file for non-matching sequences
  type: File?
  inputBinding:
    prefix: -grepv-o
- id: in_swp
  doc: '/S/G        match/substitution/gap : gain/cost/cost'
  type: string?
  inputBinding:
    prefix: -swp
- id: in_l_srl
  doc: /R         reference/left-skip / query/right-limit (adapter specific)
  type: string?
  inputBinding:
    prefix: -lsrl
- id: in_no_indel
  doc: do not consider indels while aligning
  type: boolean?
  inputBinding:
    prefix: --noindel
- id: in_skip_same_name
  doc: do not compare sequences with identical names
  type: boolean?
  inputBinding:
    prefix: --skip-same-name
- id: in_matrix
  doc: dump alignment matrix
  type: boolean?
  inputBinding:
    prefix: --matrix
- id: in_key_value
  doc: output easily parseable line-based key-value output
  type: boolean?
  inputBinding:
    prefix: --key-value
- id: in_excise
  doc: excise the aligned part when printing
  type: boolean?
  inputBinding:
    prefix: --excise
- id: in_nw
  doc: Needleman-Wunsch fill and trace (EXPERIMENTAL)
  type: boolean?
  inputBinding:
    prefix: --nw
- id: in_nw_fill
  doc: Needleman-Wunsch fill (EXPERIMENTAL)
  type: boolean?
  inputBinding:
    prefix: --nw-fill
- id: in_nw_trace
  doc: Needleman-Wunsch trace (EXPERIMENTAL)
  type: boolean?
  inputBinding:
    prefix: --nw-trace
- id: in_no_trim_left
  doc: Do not trim alignment
  type: boolean?
  inputBinding:
    prefix: --no-trimleft
- id: in_no_trim_right
  doc: Do not trim alignment
  type: boolean?
  inputBinding:
    prefix: --no-trimright
- id: in_debug
  doc: Output diagnostic information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_do
  doc: process the top <int> entries from the reference file
  type: long?
  inputBinding:
    prefix: -do
- id: in_cell
  doc: align from cell <int>
  type: long?
  inputBinding:
    prefix: -cell
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name (STDOUT)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
- id: out_grep_v_o
  doc: output file for non-matching sequences
  type: File?
  outputBinding:
    glob: $(inputs.in_grep_v_o)
hints: []
cwlVersion: v1.1
baseCommand:
- swan
