class: CommandLineTool
id: CRISPR_Studio.cwl
inputs:
- id: in_in_file
  doc: "GFF3 file generated with CRISPRDetect (Local\ninstallation or web platform\
    \ http://brownlabtools.otag\no.ac.nz/CRISPRDetect/predict_crispr_array.html)."
  type: File?
  inputBinding:
    prefix: --inFile
- id: in_list_of_isolates
  doc: "CRISPR_Studio will generate the figure with a subset\nof isolates listed in\
    \ the file (Optional: By default,\nCRISPR_Studio will generate a figure with all\
    \ the\nisolates)."
  type: File?
  inputBinding:
    prefix: --listOfIsolates
- id: in_gray_out_unique
  doc: "The unique spacers will be grayed (Optional: by\ndefault, CRISPR_Studio attributes\
    \ a unique color to\neach group of spacer and unique spacers.)"
  type: boolean?
  inputBinding:
    prefix: --grayOutUnique
- id: in_gray_out_similar
  doc: "The conserved spacers will be grayed (Optional: by\ndefault, CRISPR_Studio\
    \ attributes a unique color to\neach group of spacer and unique spacers.)"
  type: boolean?
  inputBinding:
    prefix: --grayOutSimilar
- id: in_check_fast_a
  doc: "Verification of the fasta file generated from the GFF\nfile will be skipped\
    \ if this flag is provided. The\nverification is mainly based on the length of\
    \ the\nspacer sequences. If a spacer is 1.5 time shorter or\nlonger than the average\
    \ spacer size of the dataset, a\nwarning is raised and the script stops (Verification\n\
    is ran by default). Correction can be either made in\nthe initial gff file or\
    \ in the fasta file. If the\nlater, provide the name of the fasta file after the\n\
    flag (ex. -f corrected_sequences.fasta"
  type: boolean?
  inputBinding:
    prefix: --checkFasta
- id: in_sort
  doc: "The order of the isolates in the figure: Available\noption: CRISPRDetect,\
    \ DistMatrix or File providing a\nlist of the isolates in the desired order.\n\
    CRISPRDetect = order in the gff file. DistMatrix =\nOrder extracted from a distance\
    \ matrix based on the\nsimilarity of the arrays in the isolates. File = Order\n\
    privided in a single column file with the isolates\nnames as the should appear\
    \ in the figure. The option\n-l override this option (Default: DistMatrix)"
  type: File?
  inputBinding:
    prefix: --sort
- id: in_rerun
  doc: "Use this option to keep the same color attributed to\nthe spacer during a\
    \ previous analysis"
  type: boolean?
  inputBinding:
    prefix: --rerun
- id: in_cut_off
  doc: "Set to score cutoff for pairing of the spacers\n(default = 2)"
  type: long?
  inputBinding:
    prefix: --cutoff
- id: in_spacer_size
  doc: "Show the size of the spacers over the boxed diamonds.\nWe recommend to use\
    \ this option only for experimental\nanalysis of the data\n"
  type: boolean?
  inputBinding:
    prefix: --spacerSize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- CRISPR_Studio
