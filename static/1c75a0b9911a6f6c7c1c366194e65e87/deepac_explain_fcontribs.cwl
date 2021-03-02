class: CommandLineTool
id: deepac_explain_fcontribs.cwl
inputs:
- id: in_model
  doc: Model file (.h5)
  type: File?
  inputBinding:
    prefix: --model
- id: in_w_norm
  doc: Set flag if filter weight matrices should be mean-
  type: boolean?
  inputBinding:
    prefix: --w-norm
- id: in_non_patho_test
  doc: Nonpathogenic reads of the test data set (.fasta)
  type: string?
  inputBinding:
    prefix: --nonpatho-test
- id: in_patho_test
  doc: Pathogenic reads of the test data set (.fasta)
  type: string?
  inputBinding:
    prefix: --patho-test
- id: in_out_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_ref_mode
  doc: Modus to calculate reference sequences
  type: string?
  inputBinding:
    prefix: --ref-mode
- id: in_train_data
  doc: "Train data (.npy), necessary to calculate reference\nsequences if ref_mode\
    \ is 'GC'"
  type: string?
  inputBinding:
    prefix: --train-data
- id: in_ref_seqs
  doc: "User provided reference sequences (.fasta) if ref_mode\nis 'own_ref_file'"
  type: string?
  inputBinding:
    prefix: --ref-seqs
- id: in_perform_calculations_only
  doc: "[INTER_NEURON [INTER_NEURON ...]], --inter-neuron [INTER_NEURON [INTER_NEURON\
    \ ...]]\nPerform calculations for this intermediate neuron only"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_inter_layer
  doc: Perform calculations for this intermediate layer
  type: string?
  inputBinding:
    prefix: --inter-layer
- id: in_seq_chunk
  doc: Sequence chunk size. Decrease for lower memory usage.
  type: long?
  inputBinding:
    prefix: --seq-chunk
- id: in_all_occurrences
  doc: "Extract contributions for all occurrences of a filter\nper read (Default:\
    \ max only)"
  type: boolean?
  inputBinding:
    prefix: --all-occurrences
- id: in_recurrent
  doc: Interpret elements of the LSTM output
  type: boolean?
  inputBinding:
    prefix: --recurrent
- id: in_partial
  doc: Calculate partial nucleotide contributions per filter.
  type: boolean?
  inputBinding:
    prefix: --partial
- id: in_easy_partial
  doc: "Calculate easy partial nucleotide contributions per\nfilter. Works for the\
    \ first convolutional layer only;\ndisables all-occurences mode.\n"
  type: boolean?
  inputBinding:
    prefix: --easy-partial
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_centered
  doc: -t TEST_DATA, --test_data TEST_DATA
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- deepac
- explain
- fcontribs
