class: CommandLineTool
id: rna_cd_train.cwl
inputs:
- id: in_chunksize
  doc: Chunksize in bases. Default = 100
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_contig
  doc: "Name of mitochrondrial contig in your BAM\nfiles. Default = chrM"
  type: string?
  inputBinding:
    prefix: --contig
- id: in_positives_dir
  doc: "Path to directory containing positive BAM\nfiles. Mutually exclusive with\
    \ --positives-\nlist"
  type: Directory?
  inputBinding:
    prefix: --positives-dir
- id: in_negatives_dir
  doc: "Path to directory containing negative BAM\nfiles. Mutually exlusive with --negatives-\n\
    list"
  type: Directory?
  inputBinding:
    prefix: --negatives-dir
- id: in_positives_list
  doc: "Path to file containing a list of paths to\npositive BAM files. Mutually exclusive\
    \ with\n--positives-dir"
  type: File?
  inputBinding:
    prefix: --positives-list
- id: in_negatives_list
  doc: "Path to file containing a list of paths to\nnegative BAM files. Mutuallly\
    \ exclusive with\n--negatives-dir"
  type: File?
  inputBinding:
    prefix: --negatives-list
- id: in_cross_validations
  doc: "Number of folds for cross validation run.\nDefault = 3"
  type: long?
  inputBinding:
    prefix: --cross-validations
- id: in_verbosity
  doc: "Verbosity value for cross validation step.\nDefault = 1"
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_cores
  doc: "Number of cores to use for processing of BAM\nfiles and cross validations.\
    \ Default = 1"
  type: long?
  inputBinding:
    prefix: --cores
- id: in_plot_out
  doc: Optional path to PCA plot.
  type: File?
  inputBinding:
    prefix: --plot-out
- id: in_model_out
  doc: Path where model will be stored.  [required]
  type: File?
  inputBinding:
    prefix: --model-out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rna_cd-train
