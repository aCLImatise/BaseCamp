class: CommandLineTool
id: estscan.cwl
inputs:
- id: in_one_sequence_output
  doc: All in one sequence output
  type: boolean
  inputBinding:
    prefix: -a
- id: in_only_results_shown
  doc: "only results are shown, which have scores higher than this\nfraction of the\
    \ best score [1.000000]."
  type: double
  inputBinding:
    prefix: -b
- id: in_deletion_penalty
  doc: deletion penalty [-50]
  type: long
  inputBinding:
    prefix: -d
- id: in_insertion_penalty
  doc: insertion penalty [-50]
  type: long
  inputBinding:
    prefix: -i
- id: in_only_results_longer
  doc: only results longer than this length are shown [0]
  type: long
  inputBinding:
    prefix: -l
- id: in_score_matrices_file
  doc: "score matrices file ($ESTSCANDIR/Hs.smat)\n[/usr/molbio/share/ESTScan/Hs.smat]"
  type: File
  inputBinding:
    prefix: -M
- id: in_min_value_matrix
  doc: min value in matrix [-100]
  type: long
  inputBinding:
    prefix: -m
- id: in_how_compute_score
  doc: how to compute the score of N [0]
  type: long
  inputBinding:
    prefix: -N
- id: in_remove_deleted_nucleotides
  doc: remove deleted nucleotides from the output
  type: boolean
  inputBinding:
    prefix: -n
- id: in_report_header_information
  doc: report header information for best match only
  type: boolean
  inputBinding:
    prefix: -O
- id: in_send_output_file
  doc: "send output to file.  - means stdout.  If both -t and -o specify\nstdout,\
    \ only proteins will be written."
  type: File
  inputBinding:
    prefix: -o
- id: in_gc_select_correction
  doc: GC select correction for score matrices [4.000000]
  type: double
  inputBinding:
    prefix: -p
- id: in_only_analyze_strand
  doc: only analyze positive strand
  type: boolean
  inputBinding:
    prefix: -S
- id: in_skip_sequences_shorter
  doc: Skip sequences shorter than length [1]
  type: long
  inputBinding:
    prefix: -s
- id: in_int_integers_used
  doc: "<int*>   8 integers used as log-probabilities for transitions,\nstart->5'UTR,\
    \ start->CDS, start->3'UTR, 5'UTR->CDS,\n5'UTR->end, CDS->3'UTR, CDS->end, 3'UTR->end\n\
    [-10, -10, -5, -80, -40, -80, -40, -20]"
  type: boolean
  inputBinding:
    prefix: -T
- id: in_translate_protein_means
  doc: "Translate to protein.  - means stdout.\nwill go to the file and the nucleotides\
    \ will still go to stdout."
  type: File
  inputBinding:
    prefix: -t
- id: in_version_information
  doc: version information
  type: boolean
  inputBinding:
    prefix: -v
- id: in_width_fasta_sequence
  doc: width of the FASTA sequence output [60]
  type: long
  inputBinding:
    prefix: -w
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_send_output_file
  doc: "send output to file.  - means stdout.  If both -t and -o specify\nstdout,\
    \ only proteins will be written."
  type: File
  outputBinding:
    glob: $(inputs.in_send_output_file)
cwlVersion: v1.1
baseCommand:
- estscan
