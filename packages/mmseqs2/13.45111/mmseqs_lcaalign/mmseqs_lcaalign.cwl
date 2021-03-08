class: CommandLineTool
id: mmseqs_lcaalign.cwl
inputs:
- id: in_comp_bias_corr
  doc: Correct for locally biased amino acid composition (range 0-1) [1]
  type: long?
  inputBinding:
    prefix: --comp-bias-corr
- id: in_add_self_matches
  doc: Artificially add entries of queries with themselves (for clustering) [0]
  type: boolean?
  inputBinding:
    prefix: --add-self-matches
- id: in_add_string_convert
  doc: Add backtrace string (convert to alignments with mmseqs convertalis module)
    [0]
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_alignment_mode
  doc: "How to compute the alignment:\n0: automatic\n1: only score and end_pos\n2:\
    \ also start_pos and cov\n3: also seq.id [0]"
  type: long?
  inputBinding:
    prefix: --alignment-mode
- id: in_alignment_output_mode
  doc: "How to compute the alignment:\n0: automatic\n1: only score and end_pos\n2:\
    \ also start_pos and cov\n3: also seq.id\n4: only ungapped alignment\n5: score\
    \ only (output) cluster format [0]"
  type: long?
  inputBinding:
    prefix: --alignment-output-mode
- id: in_wrapped_scoring
  doc: Double the (nucleotide) query sequence during the scoring process to allow
    wrapped diagonal scoring around end and start [0]
  type: boolean?
  inputBinding:
    prefix: --wrapped-scoring
- id: in_list_matches_evalue
  doc: List matches below this E-value (range 0.0-inf) [1.000E-03]
  type: double?
  inputBinding:
    prefix: -e
- id: in_min_seq_id
  doc: List matches above this sequence identity (for clustering) (range 0.0-1.0)
    [0.000]
  type: double?
  inputBinding:
    prefix: --min-seq-id
- id: in_min_aln_len
  doc: Minimum alignment length (range 0-INT_MAX) [0]
  type: long?
  inputBinding:
    prefix: --min-aln-len
- id: in_seq_id_mode
  doc: '0: alignment length 1: shorter, 2: longer sequence [0]'
  type: long?
  inputBinding:
    prefix: --seq-id-mode
- id: in_alt_ali
  doc: Show up to this many alternative alignments [0]
  type: long?
  inputBinding:
    prefix: --alt-ali
- id: in_list_matches_fraction
  doc: List matches above this fraction of aligned (covered) residues (see --cov-mode)
    [0.000]
  type: double?
  inputBinding:
    prefix: -c
- id: in_cov_mode
  doc: "0: coverage of query and target\n1: coverage of target\n2: coverage of query\n\
    3: target seq. length has to be at least x% of query length\n4: query seq. length\
    \ has to be at least x% of target length\n5: short seq. needs to be at least x%\
    \ of the other seq. length [0]"
  type: long?
  inputBinding:
    prefix: --cov-mode
- id: in_max_rejected
  doc: Maximum rejected alignments before alignment calculation for a query is stopped
    [2147483647]
  type: long?
  inputBinding:
    prefix: --max-rejected
- id: in_max_accept
  doc: Maximum accepted alignments before alignment calculation for a query is stopped
    [2147483647]
  type: long?
  inputBinding:
    prefix: --max-accept
- id: in_score_bias
  doc: Score bias when computing SW alignment (in bits) [0.000]
  type: double?
  inputBinding:
    prefix: --score-bias
- id: in_realign
  doc: Compute more conservative, shorter alignments (scores and E-values not changed)
    [0]
  type: boolean?
  inputBinding:
    prefix: --realign
- id: in_realign_score_bias
  doc: Additional bias when computing realignment [-0.200]
  type: double?
  inputBinding:
    prefix: --realign-score-bias
- id: in_realign_max_seqs
  doc: Maximum number of results to return in realignment [2147483647]
  type: long?
  inputBinding:
    prefix: --realign-max-seqs
- id: in_gap_open
  doc: Gap open cost [nucl:5,aa:11]
  type: long?
  inputBinding:
    prefix: --gap-open
- id: in_gap_extend
  doc: Gap extension cost [nucl:2,aa:1]
  type: long?
  inputBinding:
    prefix: --gap-extend
- id: in_z_drop
  doc: Maximal allowed difference between score values before alignment is truncated  (nucleotide
    alignment only) [40]
  type: long?
  inputBinding:
    prefix: --zdrop
- id: in_pc_a
  doc: Pseudo count admixture strength [1.000]
  type: double?
  inputBinding:
    prefix: --pca
- id: in_pcb
  doc: 'Pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]'
  type: double?
  inputBinding:
    prefix: --pcb
- id: in_sub_mat
  doc: Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: File?
  inputBinding:
    prefix: --sub-mat
- id: in_max_seq_len
  doc: Maximum sequence length [65535]
  type: long?
  inputBinding:
    prefix: --max-seq-len
- id: in_db_load_mode
  doc: 'Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]'
  type: long?
  inputBinding:
    prefix: --db-load-mode
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sub_mat
  doc: Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: File?
  outputBinding:
    glob: $(inputs.in_sub_mat)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- lcaalign
