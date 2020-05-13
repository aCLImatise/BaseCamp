class: CommandLineTool
id: phylics.cwl
inputs:
- id: run
  doc: 'Run the pipeline. USAGE: phylics --run [--run_cnvs | --run_single | --run_multiple]
    --input_dirs sample:beds_dir [sample:beds_dir ...] --genome hg19 --binning variable_500000_101_bwa
    --output_path out_path [--output_prefix out_prefix] [--verbose]'
  type: boolean
  inputBinding:
    prefix: --run
- id: run_10x_preproc
  doc: 'Run 10x data pre-processing module. USAGE: phylics --run_10x_preproc --input_dirs
    sample_name:10x_out_path --output_path out_oath [--output_prefix out_prefix] [--verbose].
    Only single- sample execution is available for this option: only the first input
    directory is considered, even if more than one has been declared.'
  type: boolean
  inputBinding:
    prefix: --run_10x_preproc
- id: run_cell_filtering
  doc: 'Run the cell filtering module. USAGE: phylics --run_cell_filtering --input_dirs
    sample_name:input_path --intervals [v1-v2 [v1-v2 ...] --values [v [v ...]] --output_path
    out_path [--output_prefix out_prefix] [--verbose]. Only single- sample execution
    is available for this option: only the first input directory is considered, even
    if more than one has been declared. NOTE that at least one of the two options,
    "--intervals" and "--values", must contain values to make this command effective.'
  type: boolean
  inputBinding:
    prefix: --run_cell_filtering
- id: run_cn_vs
  doc: 'Run only the CNV calling stage. USAGE: phylics --run --run_cnvs --input_dirs
    beds_dir [beds_dir ...] --genome hg19 --binning variable_500000_101_bwa [--init_ginkgo]
    [--verbose]'
  type: boolean
  inputBinding:
    prefix: --run_cnvs
- id: run_single
  doc: 'Run only the single-sample analysis stage. USAGE: phylics --run --run_single
    --input_dirs sample:input_dir [sample:input_dir ...] --output_path out_path [--output_prefix
    out_prefix] [--verbose]'
  type: boolean
  inputBinding:
    prefix: --run_single
- id: run_multiple
  doc: 'Run only the multiple-sample analysis stage. USAGE: phylics --run --run_multiple
    --input_dirs sample:input_dir [sample:input_dir ...] --output_path out_path [--output_prefix
    out_prefix] [--verbose]'
  type: boolean
  inputBinding:
    prefix: --run_multiple
- id: method
  doc: Clustering method (default = complete)
  type: string
  inputBinding:
    prefix: --method
- id: metric
  doc: Distance metric
  type: string
  inputBinding:
    prefix: --metric
- id: output_path
  doc: Path to the location where the output directories for the different analysis
    stages must be created.
  type: string
  inputBinding:
    prefix: --output_path
- id: output_prefix
  doc: A string to be pre-pended to the names automatically generated for the output
    directories
  type: string
  inputBinding:
    prefix: --output_prefix
- id: tasks
  doc: Maximum number of tasks to be run in parallel. It allows to execute single-sample
    analyses in parallel and to parallelize the permutation test execution for the
    heterogeneity score computation.
  type: string
  inputBinding:
    prefix: --tasks
- id: seed
  doc: Seed to initialize the pseudo-random generator used to perform the permutation
    test.
  type: string
  inputBinding:
    prefix: --seed
- id: n_permutations
  doc: Number of permutations to execute the permutation test for the heterogeneity
    score computation.
  type: string
  inputBinding:
    prefix: --n_permutations
- id: rec_lust
  doc: If this option is specified, only the clustering part is executed with the
    specified number of clusters (see --n_clusters option), unless --reinit option
    is specified (see below).
  type: string
  inputBinding:
    prefix: --reclust
- id: reinit
  doc: This option has effect only if combined with the --reclust option. It allows
    to recompute the entire analysis and then recluster with the specified number
    of clusters.
  type: boolean
  inputBinding:
    prefix: --reinit
- id: intervals
  doc: 'List of of mean ploidy intervals: cells which mean ploidies are in the specified
    ranges are filtered out'
  type: string[]
  inputBinding:
    prefix: --intervals
- id: values
  doc: 'List of of mean ploidy values: cells which mean ploidies are equal to the
    specified ones are filtered out'
  type: string[]
  inputBinding:
    prefix: --values
- id: genome
  doc: Directory name for ROOT_DIR/genomes/${chosen_genome}
  type: string
  inputBinding:
    prefix: --genome
- id: binning
  doc: 'A complex value made of the concatenation of - type: variable or fixed (bins.
    Variable refers to amount of mappable genome, recommended); - size: bin size;
    - read-length: mapped reads length; - aligner: bowtie or bwa. The read-length
    and aligner refer to the simulations of re-mapping reads of that length with that
    aligner on the whole genome. This is used to calculate bins of "mappable" (i.e.
    variable) genome.The resulting value is the name of a file under ginkgo/genomes/$choosen_genome/original/
    with the bin coordinates.'
  type: string
  inputBinding:
    prefix: --binning
- id: verbose
  doc: Verbose execution.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- phylics
