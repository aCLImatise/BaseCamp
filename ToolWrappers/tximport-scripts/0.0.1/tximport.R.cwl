class: CommandLineTool
id: tximport.R.cwl
inputs:
- id: in_files
  doc: Text file containing a list of filenames for the transcript-level abundances
    (one per line). Sample names will be derived from directory names
  type: File
  inputBinding:
    prefix: --files
- id: in_type
  doc: The type of software used to generate the abundances. Must be one of 'none',
    'salmon', 'sailfish', 'kallisto', 'rsem', 'stringtie'. This argument is used to
    autofill the arguments below (geneIdCol, etc.) 'none' means that the user will
    specify these columns.
  type: boolean
  inputBinding:
    prefix: --type
- id: in_output_counts_file
  doc: Counts output file path. Where output format is 'sparse', this should be a
    directory path
  type: File
  inputBinding:
    prefix: --outputCountsFile
- id: in_output_abundances_file
  doc: Abundances output file path. Where output format is 'sparse', this should be
    a directory path
  type: File
  inputBinding:
    prefix: --outputAbundancesFile
- id: in_output_stats_file
  doc: File in which to output a summary of statistics (Kallisto only)
  type: File
  inputBinding:
    prefix: --outputStatsFile
- id: in_output_format
  doc: Output file format. Once of 'tsv' (tab separated), 'sparse' (Cellranger Matrix
    Market format), 'HDF5' (HDF5)
  type: File
  inputBinding:
    prefix: --outputFormat
- id: in_tx_in
  doc: Whether the incoming files are transcript level (default TRUE)
  type: string
  inputBinding:
    prefix: --txIn
- id: in_tx_out
  doc: Whether the function should just output transcript-level (default FALSE)
  type: string
  inputBinding:
    prefix: --txOut
- id: in_counts_from_abundance
  doc: "Whether to generate estimated counts using abundance estimates: 'no' (default),\
    \ 'scaledTPM' (scaled up to library size), 'lengthScaledTPM' (scaled using the\
    \ average transcript length over samples and then the library size), or 'dtuScaledTPM'\
    \ (scaled using the median transcript length among isoforms of a gene, and then\
    \ the library size (dtuScaledTPM))"
  type: boolean
  inputBinding:
    prefix: --countsFromAbundance
- id: in_tx_two_gene
  doc: A two-column tab-delimited text file linking transcript id (column 1) to gene
    id (column 2). This argument is required for gene-level summarization for methods
    that provides transcript-level estimates only (kallisto, Salmon, Sailfish)
  type: long
  inputBinding:
    prefix: --tx2gene
- id: in_var_reduce
  doc: whether to reduce per-sample inferential replicates information into a matrix
    of sample variances variance (default FALSE)
  type: string
  inputBinding:
    prefix: --varReduce
- id: in_drop_inf_reps
  doc: Whether to skip reading in inferential replicates (default FALSE)
  type: string
  inputBinding:
    prefix: --dropInfReps
- id: in_ignore_tx_version
  doc: logical, whether to split the tx id on the '.' character to remove version
    information, for easier matching with the tx id in gene2tx (default FALSE)
  type: long
  inputBinding:
    prefix: --ignoreTxVersion
- id: in_ignore_after_bar
  doc: logical, whether to split the tx id on the '|' character (default FALSE)
  type: string
  inputBinding:
    prefix: --ignoreAfterBar
- id: in_geneid_col
  doc: Name of column with gene id. if missing, the gene2tx argument can be used
  type: long
  inputBinding:
    prefix: --geneIdCol
- id: in_tx_id_col
  doc: Name of column with tx id
  type: string
  inputBinding:
    prefix: --txIdCol
- id: in_abundance_col
  doc: Name of column with abundances (e.g. TPM or FPKM)
  type: string
  inputBinding:
    prefix: --abundanceCol
- id: in_counts_col
  doc: Name of column with estimated counts
  type: string
  inputBinding:
    prefix: --countsCol
- id: in_length_col
  doc: Name of column with feature length information
  type: long
  inputBinding:
    prefix: --lengthCol
- id: in_importer
  doc: A function used to read in the files
  type: string
  inputBinding:
    prefix: --importer
- id: in_existence_optional
  doc: logical, should tximport not check if files exist before attempting import
    (default FALSE, meaning files must exist according to file.exists)
  type: File
  inputBinding:
    prefix: --existenceOptional
- id: in_read_length
  doc: "numeric, the read length used to calculate counts from StringTie's output\
    \ of coverage. Default value (from StringTie) is 75. The formula used to calculate\
    \ counts is: cov * transcript length / read length"
  type: long
  inputBinding:
    prefix: --readLength
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_counts_file
  doc: Counts output file path. Where output format is 'sparse', this should be a
    directory path
  type: File
  outputBinding:
    glob: $(inputs.in_output_counts_file)
- id: out_output_abundances_file
  doc: Abundances output file path. Where output format is 'sparse', this should be
    a directory path
  type: File
  outputBinding:
    glob: $(inputs.in_output_abundances_file)
- id: out_output_stats_file
  doc: File in which to output a summary of statistics (Kallisto only)
  type: File
  outputBinding:
    glob: $(inputs.in_output_stats_file)
- id: out_output_format
  doc: Output file format. Once of 'tsv' (tab separated), 'sparse' (Cellranger Matrix
    Market format), 'HDF5' (HDF5)
  type: File
  outputBinding:
    glob: $(inputs.in_output_format)
cwlVersion: v1.1
baseCommand:
- tximport.R
