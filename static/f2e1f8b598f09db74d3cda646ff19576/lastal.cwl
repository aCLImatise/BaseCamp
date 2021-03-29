class: CommandLineTool
id: lastal.cwl
inputs:
- id: in_be_verbose_write
  doc: ': be verbose: write messages about what lastal is doing'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_output_format_tab
  doc: ': output format: TAB, MAF, BlastTab, BlastTab+ (default=MAF)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_query_letters_e
  doc: ': query letters per random alignment (1e+06)'
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_maximum_expected_alignments
  doc: ': maximum expected alignments per square giga (1e+18/D/refSize/numOfStrands)'
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_match_score_m
  doc: ': match score   (2 if -M, else  6 if 1<=Q<=4, else 1 if DNA)'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_mismatch_cost_m
  doc: ': mismatch cost (3 if -M, else 18 if 1<=Q<=4, else 1 if DNA)'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_matchmismatch_score_matrix
  doc: ': match/mismatch score matrix (protein-protein: BL62, DNA-protein: BL80)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_nx_ambiguous_sequence
  doc: ': N/X is ambiguous in: 0=neither sequence, 1=reference, 2=query, 3=both (0)'
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_gap_existence_cost
  doc: ': gap existence cost (DNA: 7, protein: 11, 1<=Q<=4: 21)'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_gap_extension_cost
  doc: ': gap extension cost (DNA: 1, protein:  2, 1<=Q<=4:  9)'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_insertion_existence_cost
  doc: ': insertion existence cost (a)'
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_insertion_extension_cost
  doc: ': insertion extension cost (b)'
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_unaligned_residue_pair
  doc: ': unaligned residue pair cost (off)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in__frameshift_costs
  doc: ': frameshift cost(s) (off)'
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_maximum_score_drop_preliminary
  doc: ': maximum score drop for preliminary gapped alignments (z)'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_maximum_score_drop_gapless
  doc: ': maximum score drop for gapless alignments (min[t*10, x])'
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_maximum_score_drop_final
  doc: ': maximum score drop for final gapped alignments (e-1)'
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_minimum_score_gapless
  doc: ': minimum score for gapless alignments (min[e, 2500/n query letters per hit])'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_minimum_score_gapped
  doc: ': minimum score for gapped alignments'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_maximum_initial_matches
  doc: ': maximum initial matches per query position (10)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_minimum_length_initial
  doc: ': minimum length for initial matches (1)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_maximum_length_initial
  doc: ': maximum length for initial matches (infinity)'
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_use_initial_matches
  doc: ': use initial matches starting at every k-th position in each query (1)'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_use_positions_sliding
  doc: ': use "minimum" positions in sliding windows of W consecutive positions'
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_strand_reverse_forward
  doc: ': strand: 0=reverse, 1=forward, 2=both (2 for DNA, 1 for protein)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_score_matrix_applies
  doc: ': score matrix applies to forward strand of: 0=reference, 1=query (0)'
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_omit_alignments_lies
  doc: ': omit alignments whose query range lies in >= K others with > score (off)'
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_omit_gapless_alignments
  doc: ': omit gapless alignments in >= C others with > score-per-length (off)'
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_number_parallel_threads
  doc: ': number of parallel threads (1)'
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_query_batch_size
  doc: ': query batch size (8 KiB, unless there is > 1 thread or lastdb volume)'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_find_minimumdifference_alignments
  doc: ': find minimum-difference alignments (faster but cruder)'
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_type_alignment_local
  doc: ': type of alignment: 0=local, 1=overlap (0)'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_maximum_gapless_alignments
  doc: ': maximum gapless alignments per query position (infinity if m=0, else m)'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_stop_first_n
  doc: ': stop after the first N alignments per query strand'
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_lowercase_simplesequence_options
  doc: ': lowercase & simple-sequence options (the same as was used by lastdb)'
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_mask_lowercase_extensions
  doc: ": mask lowercase during extensions: 0=never, 1=gapless,\n2=gapless+postmask,\
    \ 3=always (2 if lastdb -c and Q!=pssm, else 0)"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_suppress_repeats_distance
  doc: ': suppress repeats inside exact matches, offset by <= this distance (1000)'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in__genetic_code
  doc: ': genetic code (1)'
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_calculating_probabilities_lambda
  doc: ": 'temperature' for calculating probabilities (1/lambda)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_parameter_gammacentroid_lama
  doc: ": 'gamma' parameter for gamma-centroid and LAMA (1)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_output_type_match
  doc: ": output type: 0=match counts, 1=gapless, 2=redundant gapped, 3=gapped,\n\
    4=column ambiguity estimates, 5=gamma-centroid, 6=LAMA,\n7=expected counts (3)"
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_input_format_fastx
  doc: ": input format: fastx, keep, sanger, solexa, illumina, prb, pssm\n(default=fasta)\n"
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_last_db_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/last:1205--h8b12597_0
cwlVersion: v1.1
baseCommand:
- lastal
