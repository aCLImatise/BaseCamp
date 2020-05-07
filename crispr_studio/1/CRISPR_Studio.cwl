class: CommandLineTool
id: CRISPR_Studio.cwl
inputs:
- id: in_file
  doc: GFF3 file generated with CRISPRDetect (Local installation or web platform http://brownlabtools.otag
    o.ac.nz/CRISPRDetect/predict_crispr_array.html).
  type: File
  inputBinding:
    prefix: --inFile
- id: list_of_isolates
  doc: 'CRISPR_Studio will generate the figure with a subset of isolates listed in
    the file (Optional: By default, CRISPR_Studio will generate a figure with all
    the isolates).'
  type: File
  inputBinding:
    prefix: --listOfIsolates
- id: gray_out_unique
  doc: 'The unique spacers will be grayed (Optional: by default, CRISPR_Studio attributes
    a unique color to each group of spacer and unique spacers.)'
  type: boolean
  inputBinding:
    prefix: --grayOutUnique
- id: gray_out_similar
  doc: 'The conserved spacers will be grayed (Optional: by default, CRISPR_Studio
    attributes a unique color to each group of spacer and unique spacers.)'
  type: boolean
  inputBinding:
    prefix: --grayOutSimilar
- id: check_fast_a
  doc: Verification of the fasta file generated from the GFF file will be skipped
    if this flag is provided. The verification is mainly based on the length of the
    spacer sequences. If a spacer is 1.5 time shorter or longer than the average spacer
    size of the dataset, a warning is raised and the script stops (Verification is
    ran by default). Correction can be either made in the initial gff file or in the
    fasta file. If the later, provide the name of the fasta file after the flag (ex.
    -f corrected_sequences.fasta
  type: boolean
  inputBinding:
    prefix: --checkFasta
- id: sort
  doc: 'The order of the isolates in the figure: Available option: CRISPRDetect, DistMatrix
    or File providing a list of the isolates in the desired order. CRISPRDetect =
    order in the gff file. DistMatrix = Order extracted from a distance matrix based
    on the similarity of the arrays in the isolates. File = Order privided in a single
    column file with the isolates names as the should appear in the figure. The option
    -l override this option (Default: DistMatrix)'
  type: string
  inputBinding:
    prefix: --sort
- id: rerun
  doc: Use this option to keep the same color attributed to the spacer during a previous
    analysis
  type: boolean
  inputBinding:
    prefix: --rerun
- id: cut_off
  doc: Set to score cutoff for pairing of the spacers (default = 2)
  type: string
  inputBinding:
    prefix: --cutoff
- id: spacer_size
  doc: Show the size of the spacers over the boxed diamonds. We recommend to use this
    option only for experimental analysis of the data
  type: boolean
  inputBinding:
    prefix: --spacerSize
outputs: []
cwlVersion: v1.1
baseCommand:
- CRISPR_Studio
