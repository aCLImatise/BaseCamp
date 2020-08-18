class: CommandLineTool
id: ../../../estscan.cwl
inputs:
- id: one_sequence_output
  doc: All in one sequence output
  type: boolean
  inputBinding:
    prefix: -a
- id: only_results_shown
  doc: only results are shown, which have scores higher than this  fraction of the
    best score [1.000000].
  type: double
  inputBinding:
    prefix: -b
- id: deletion_penalty
  doc: deletion penalty [-50]
  type: long
  inputBinding:
    prefix: -d
- id: insertion_penalty
  doc: insertion penalty [-50]
  type: long
  inputBinding:
    prefix: -i
- id: only_results_longer
  doc: only results longer than this length are shown [0]
  type: long
  inputBinding:
    prefix: -l
- id: score_matrices_file
  doc: score matrices file ($ESTSCANDIR/Hs.smat) [/usr/molbio/share/ESTScan/Hs.smat]
  type: File
  inputBinding:
    prefix: -M
- id: min_value_matrix
  doc: min value in matrix [-100]
  type: long
  inputBinding:
    prefix: -m
- id: how_compute_score
  doc: how to compute the score of N [0]
  type: long
  inputBinding:
    prefix: -N
- id: remove_deleted_nucleotides
  doc: remove deleted nucleotides from the output
  type: boolean
  inputBinding:
    prefix: -n
- id: report_header_information
  doc: report header information for best match only
  type: boolean
  inputBinding:
    prefix: -O
- id: send_output_file
  doc: send output to file.  - means stdout.  If both -t and -o specify stdout, only
    proteins will be written.
  type: File
  inputBinding:
    prefix: -o
- id: gc_select_correction
  doc: GC select correction for score matrices [4.000000]
  type: double
  inputBinding:
    prefix: -p
- id: only_analyze_strand
  doc: only analyze positive strand
  type: boolean
  inputBinding:
    prefix: -S
- id: skip_sequences_shorter
  doc: Skip sequences shorter than length [1]
  type: long
  inputBinding:
    prefix: -s
- id: int_integers_used
  doc: <int*>   8 integers used as log-probabilities for transitions, start->5'UTR,
    start->CDS, start->3'UTR, 5'UTR->CDS, 5'UTR->end, CDS->3'UTR, CDS->end, 3'UTR->end
    [-10, -10, -5, -80, -40, -80, -40, -20]
  type: boolean
  inputBinding:
    prefix: -T
- id: translate_protein_means
  doc: Translate to protein.  - means stdout. will go to the file and the nucleotides
    will still go to stdout.
  type: File
  inputBinding:
    prefix: -t
- id: version_information
  doc: version information
  type: boolean
  inputBinding:
    prefix: -v
- id: width_fasta_sequence
  doc: width of the FASTA sequence output [60]
  type: long
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- estscan
