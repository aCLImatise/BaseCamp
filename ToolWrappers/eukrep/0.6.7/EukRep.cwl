class: CommandLineTool
id: EukRep.cwl
inputs:
- id: in_input_fasta_file
  doc: input fasta file
  type: File
  inputBinding:
    prefix: -i
- id: in_output_file_name
  doc: output file name
  type: File
  inputBinding:
    prefix: -o
- id: in_ff
  doc: Force overwrite of existing output files
  type: boolean
  inputBinding:
    prefix: -ff
- id: in_min
  doc: Minimum sequence length cutoff for sequences to be included in prediction.
    Default is 3kb
  type: long
  inputBinding:
    prefix: --min
- id: in_model
  doc: Path to an alternate trained linear SVM model. Default is lin_svm_160_3.0.pickle
  type: File
  inputBinding:
    prefix: --model
- id: in_km_er_len
  doc: Kmer length to use for making predictions. Lengths between 3-7bp are available
    by default. If using a custom trained model, specify kmer length here.
  type: long
  inputBinding:
    prefix: --kmer_len
- id: in_pro_karya
  doc: Name of file to output predicted prokaryotic sequences to. Default is to not
    output prokaryotic sequences.
  type: File
  inputBinding:
    prefix: --prokarya
- id: in_seq_names
  doc: Only output fasta headers of identified sequences. Default is full fasta entry
  type: boolean
  inputBinding:
    prefix: --seq_names
- id: in_compatable__modelhow
  doc: "Not compatable with --model.\nHow stringent the algorithm is in identifying\
    \ eukaryotic scaffolds. Strict has a lower false positive rate and true positive\
    \ rate; vice verso for leneient. Default is balanced."
  type: string
  inputBinding:
    prefix: -m
- id: in_tie
  doc: "Specify how to handle cases where an equal number of a sequences chunks are\
    \ predicted to be of eukaryotic and prokaryotic origin (Generally occurs infrequently).\n\
    euk = classify as euk\nprok = classify as prok\nrand = assign randomly\nskip =\
    \ do not classify\nDefault is to classify as eukaryotic.\n"
  type: long
  inputBinding:
    prefix: --tie
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
- id: out_pro_karya
  doc: Name of file to output predicted prokaryotic sequences to. Default is to not
    output prokaryotic sequences.
  type: File
  outputBinding:
    glob: $(inputs.in_pro_karya)
cwlVersion: v1.1
baseCommand:
- EukRep
