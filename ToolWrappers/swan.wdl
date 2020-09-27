version 1.0

task Swan {
  input {
    File? output_file_name
    File? fasta_file_reference
    File? fasta_file_query
    String? rs
    String? qs
    Int? q_len
    Int? r_len
    String? q_string
    String? r_string
    Int? identity
    Int? index
    Int? n_seeds
    Int? w_seeds
    Boolean? grep
    Boolean? grep_v
    File? grep_v_o
    String? swp
    String? l_srl
    Boolean? no_indel
    Boolean? skip_same_name
    Boolean? matrix
    Boolean? key_value
    Boolean? excise
    Boolean? nw
    Boolean? nw_fill
    Boolean? nw_trace
    Boolean? no_trim_left
    Boolean? no_trim_right
    Boolean? debug
    Int? do
    Int? cell
  }
  command <<<
    swan \
      ~{if (output_file_name) then "-o" else ""} \
      ~{if defined(fasta_file_reference) then ("-r " +  '"' + fasta_file_reference + '"') else ""} \
      ~{if defined(fasta_file_query) then ("-q " +  '"' + fasta_file_query + '"') else ""} \
      ~{if defined(rs) then ("-rs " +  '"' + rs + '"') else ""} \
      ~{if defined(qs) then ("-qs " +  '"' + qs + '"') else ""} \
      ~{if defined(q_len) then ("-q-len " +  '"' + q_len + '"') else ""} \
      ~{if defined(r_len) then ("-r-len " +  '"' + r_len + '"') else ""} \
      ~{if defined(q_string) then ("-q-string " +  '"' + q_string + '"') else ""} \
      ~{if defined(r_string) then ("-r-string " +  '"' + r_string + '"') else ""} \
      ~{if defined(identity) then ("-identity " +  '"' + identity + '"') else ""} \
      ~{if defined(index) then ("-index " +  '"' + index + '"') else ""} \
      ~{if defined(n_seeds) then ("-n-seeds " +  '"' + n_seeds + '"') else ""} \
      ~{if defined(w_seeds) then ("-w-seeds " +  '"' + w_seeds + '"') else ""} \
      ~{if (grep) then "--grep" else ""} \
      ~{if (grep_v) then "--grepv" else ""} \
      ~{if defined(grep_v_o) then ("-grepv-o " +  '"' + grep_v_o + '"') else ""} \
      ~{if defined(swp) then ("-swp " +  '"' + swp + '"') else ""} \
      ~{if defined(l_srl) then ("-lsrl " +  '"' + l_srl + '"') else ""} \
      ~{if (no_indel) then "--noindel" else ""} \
      ~{if (skip_same_name) then "--skip-same-name" else ""} \
      ~{if (matrix) then "--matrix" else ""} \
      ~{if (key_value) then "--key-value" else ""} \
      ~{if (excise) then "--excise" else ""} \
      ~{if (nw) then "--nw" else ""} \
      ~{if (nw_fill) then "--nw-fill" else ""} \
      ~{if (nw_trace) then "--nw-trace" else ""} \
      ~{if (no_trim_left) then "--no-trimleft" else ""} \
      ~{if (no_trim_right) then "--no-trimright" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(do) then ("-do " +  '"' + do + '"') else ""} \
      ~{if defined(cell) then ("-cell " +  '"' + cell + '"') else ""}
  >>>
  parameter_meta {
    output_file_name: "output file name (STDOUT)"
    fasta_file_reference: "fasta file for reference"
    fasta_file_query: "fasta file for query"
    rs: "reference string to align (displayed on top)"
    qs: "query string to align (displayed below)"
    q_len: "only consider sequences at least this long"
    r_len: "only consider sequences at least this long"
    q_string: "e.g. hsa, mmu; only matching identifiers are considered"
    r_string: "e.g. hsa, mmu; only matching identifiers are considered"
    identity: "require matches with at least <int> identity (0-100)"
    index: "k-mer size to build index on (suggest 8 to 12; filters on k-mer match!)"
    n_seeds: "require <int> independent k-mer hits for a match to be considered (overlap not allowed)"
    w_seeds: "require two seeds spanning at least <int> bases (overlap allowed)"
    grep: "output sequences that match the reference (requires -identity)"
    grep_v: "output sequences (see -grepv-o) that do not match the reference (requires -identity)"
    grep_v_o: "output file for non-matching sequences"
    swp: "match/substitution/gap : gain/cost/cost"
    l_srl: "reference/left-skip / query/right-limit (adapter specific)"
    no_indel: "do not consider indels while aligning"
    skip_same_name: "do not compare sequences with identical names"
    matrix: "dump alignment matrix"
    key_value: "output easily parseable line-based key-value output"
    excise: "excise the aligned part when printing"
    nw: "Needleman-Wunsch fill and trace (EXPERIMENTAL)"
    nw_fill: "Needleman-Wunsch fill (EXPERIMENTAL)"
    nw_trace: "Needleman-Wunsch trace (EXPERIMENTAL)"
    no_trim_left: "Do not trim alignment"
    no_trim_right: "Do not trim alignment"
    debug: "Output diagnostic information"
    do: "process the top <int> entries from the reference file"
    cell: "align from cell <int>"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_grep_v_o = "${in_grep_v_o}"
  }
}