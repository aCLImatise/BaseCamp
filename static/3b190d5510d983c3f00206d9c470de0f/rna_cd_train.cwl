class: CommandLineTool
id: rna_cd_train.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chunksize
  doc: Chunksize in bases. Default = 100
  type: long
  inputBinding:
    prefix: --chunksize
- id: contig
  doc: Name of mitochrondrial contig in your BAM files. Default = chrM
  type: string
  inputBinding:
    prefix: --contig
- id: positives_dir
  doc: Path to directory containing positive BAM files. Mutually exclusive with --positives-
    list
  type: Directory
  inputBinding:
    prefix: --positives-dir
- id: negatives_dir
  doc: Path to directory containing negative BAM files. Mutually exlusive with --negatives-
    list
  type: Directory
  inputBinding:
    prefix: --negatives-dir
- id: positives_list
  doc: Path to file containing a list of paths to positive BAM files. Mutually exclusive
    with --positives-dir
  type: File
  inputBinding:
    prefix: --positives-list
- id: negatives_list
  doc: Path to file containing a list of paths to negative BAM files. Mutuallly exclusive
    with --negatives-dir
  type: File
  inputBinding:
    prefix: --negatives-list
- id: cross_validations
  doc: Number of folds for cross validation run. Default = 3
  type: long
  inputBinding:
    prefix: --cross-validations
- id: verbosity
  doc: Verbosity value for cross validation step. Default = 1
  type: long
  inputBinding:
    prefix: --verbosity
- id: cores
  doc: Number of cores to use for processing of BAM files and cross validations. Default
    = 1
  type: long
  inputBinding:
    prefix: --cores
- id: plot_out
  doc: Optional path to PCA plot.
  type: File
  inputBinding:
    prefix: --plot-out
- id: model_out
  doc: Path where model will be stored.  [required]
  type: File
  inputBinding:
    prefix: --model-out
outputs: []
cwlVersion: v1.1
baseCommand:
- rna_cd-train
