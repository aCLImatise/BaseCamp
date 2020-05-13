class: CommandLineTool
id: tximport.R.cwl
inputs:
- id: files
  doc: Text file containing a list of filenames for the transcript-level abundances
    (one per line). Sample names will be derived from directory names
  type: File
  inputBinding:
    prefix: --files
- id: type
  doc: The type of software used to generate the abundances. Must be one of 'none',
    'salmon', 'sailfish', 'kallisto', 'rsem', 'stringtie'. This argument is used to
    autofill the arguments below (geneIdCol, etc.) 'none' means that the user will
    specify these columns.
  type: string
  inputBinding:
    prefix: --type
- id: output_counts_file
  doc: Counts output file path. Where output format is 'sparse', this should be a
    directory path
  type: string
  inputBinding:
    prefix: --outputCountsFile
- id: output_abundances_file
  doc: Abundances output file path. Where output format is 'sparse', this should be
    a directory path
  type: string
  inputBinding:
    prefix: --outputAbundancesFile
- id: output_stats_file
  doc: File in which to output a summary of statistics (Kallisto only)
  type: string
  inputBinding:
    prefix: --outputStatsFile
- id: output_format
  doc: Output file format. Once of 'tsv' (tab separated), 'sparse' (Cellranger Matrix
    Market format), 'HDF5' (HDF5)
  type: string
  inputBinding:
    prefix: --outputFormat
- id: tx_in
  doc: Whether the incoming files are transcript level (default TRUE)
  type: string
  inputBinding:
    prefix: --txIn
- id: tx_out
  doc: Whether the function should just output transcript-level (default FALSE)
  type: string
  inputBinding:
    prefix: --txOut
- id: counts_from_abundance
  doc: "Whether to generate estimated counts using abundance estimates: 'no' (default),\
    \ 'scaledTPM' (scaled up to library size), 'lengthScaledTPM' (scaled using the\
    \ average transcript length over samples and then the library size), or 'dtuScaledTPM'\
    \ (scaled using the median transcript length among isoforms of a gene, and then\
    \ the library size (dtuScaledTPM))"
  type: string
  inputBinding:
    prefix: --countsFromAbundance
- id: tx2gene
  doc: A two-column tab-delimited text file linking transcript id (column 1) to gene
    id (column 2). This argument is required for gene-level summarization for methods
    that provides transcript-level estimates only (kallisto, Salmon, Sailfish)
  type: string
  inputBinding:
    prefix: --tx2gene
- id: var_reduce
  doc: whether to reduce per-sample inferential replicates information into a matrix
    of sample variances variance (default FALSE)
  type: string
  inputBinding:
    prefix: --varReduce
- id: drop_inf_reps
  doc: Whether to skip reading in inferential replicates (default FALSE)
  type: string
  inputBinding:
    prefix: --dropInfReps
- id: ignore_tx_version
  doc: logical, whether to split the tx id on the '.' character to remove version
    information, for easier matching with the tx id in gene2tx (default FALSE)
  type: string
  inputBinding:
    prefix: --ignoreTxVersion
- id: ignore_after_bar
  doc: logical, whether to split the tx id on the '|' character (default FALSE)
  type: string
  inputBinding:
    prefix: --ignoreAfterBar
- id: geneid_col
  doc: Name of column with gene id. if missing, the gene2tx argument can be used
  type: string
  inputBinding:
    prefix: --geneIdCol
- id: tx_id_col
  doc: Name of column with tx id
  type: string
  inputBinding:
    prefix: --txIdCol
- id: abundance_col
  doc: Name of column with abundances (e.g. TPM or FPKM)
  type: string
  inputBinding:
    prefix: --abundanceCol
- id: counts_col
  doc: Name of column with estimated counts
  type: string
  inputBinding:
    prefix: --countsCol
- id: length_col
  doc: Name of column with feature length information
  type: long
  inputBinding:
    prefix: --lengthCol
- id: importer
  doc: A function used to read in the files
  type: string
  inputBinding:
    prefix: --importer
- id: existence_optional
  doc: logical, should tximport not check if files exist before attempting import
    (default FALSE, meaning files must exist according to file.exists)
  type: string
  inputBinding:
    prefix: --existenceOptional
- id: read_length
  doc: "numeric, the read length used to calculate counts from StringTie's output\
    \ of coverage. Default value (from StringTie) is 75. The formula used to calculate\
    \ counts is: cov * transcript length / read length"
  type: string
  inputBinding:
    prefix: --readLength
outputs: []
cwlVersion: v1.1
baseCommand:
- tximport.R
