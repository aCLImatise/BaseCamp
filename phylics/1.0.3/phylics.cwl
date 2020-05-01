#!/usr/bin/env cwl-runner

baseCommand:
- phylics
class: CommandLineTool
cwlVersion: v1.0
id: phylics
inputs:
- doc: 'Run the pipeline. USAGE: phylics --run [--run_cnvs | --run_single | --run_multiple]
    --input_dirs sample:beds_dir [sample:beds_dir ...] --genome hg19 --binning variable_500000_101_bwa
    --output_path out_path [--output_prefix out_prefix] [--verbose]'
  id: run
  inputBinding:
    prefix: --run
  type: boolean
- doc: 'Run 10x data pre-processing module. USAGE: phylics --run_10x_preproc --input_dirs
    sample_name:10x_out_path --output_path out_oath [--output_prefix out_prefix] [--verbose].
    Only single- sample execution is available for this option: only the first input
    directory is considered, even if more than one has been declared.'
  id: run_10x_preproc
  inputBinding:
    prefix: --run_10x_preproc
  type: boolean
- doc: 'Run the cell filtering module. USAGE: phylics --run_cell_filtering --input_dirs
    sample_name:input_path --intervals [v1-v2 [v1-v2 ...] --values [v [v ...]] --output_path
    out_path [--output_prefix out_prefix] [--verbose]. Only single- sample execution
    is available for this option: only the first input directory is considered, even
    if more than one has been declared. NOTE that at least one of the two options,
    "--intervals" and "--values", must contain values to make this command effective.'
  id: run_cell_filtering
  inputBinding:
    prefix: --run_cell_filtering
  type: boolean
- doc: 'Run only the CNV calling stage. USAGE: phylics --run --run_cnvs --input_dirs
    beds_dir [beds_dir ...] --genome hg19 --binning variable_500000_101_bwa [--init_ginkgo]
    [--verbose]'
  id: run_cn_vs
  inputBinding:
    prefix: --run_cnvs
  type: boolean
- doc: 'Run only the single-sample analysis stage. USAGE: phylics --run --run_single
    --input_dirs sample:input_dir [sample:input_dir ...] --output_path out_path [--output_prefix
    out_prefix] [--verbose]'
  id: run_single
  inputBinding:
    prefix: --run_single
  type: boolean
- doc: 'Run only the multiple-sample analysis stage. USAGE: phylics --run --run_multiple
    --input_dirs sample:input_dir [sample:input_dir ...] --output_path out_path [--output_prefix
    out_prefix] [--verbose]'
  id: run_multiple
  inputBinding:
    prefix: --run_multiple
  type: boolean
- doc: Clustering method (default = complete)
  id: method
  inputBinding:
    prefix: --method
  type: string
- doc: Distance metric
  id: metric
  inputBinding:
    prefix: --metric
  type: string
- doc: Path to the location where the output directories for the different analysis
    stages must be created.
  id: output_path
  inputBinding:
    prefix: --output_path
  type: string
- doc: A string to be pre-pended to the names automatically generated for the output
    directories
  id: output_prefix
  inputBinding:
    prefix: --output_prefix
  type: string
- doc: Maximum number of tasks to be run in parallel. It allows to execute single-sample
    analyses in parallel and to parallelize the permutation test execution for the
    heterogeneity score computation.
  id: tasks
  inputBinding:
    prefix: --tasks
  type: string
- doc: Seed to initialize the pseudo-random generator used to perform the permutation
    test.
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: Number of permutations to execute the permutation test for the heterogeneity
    score computation.
  id: n_permutations
  inputBinding:
    prefix: --n_permutations
  type: string
- doc: If this option is specified, only the clustering part is executed with the
    specified number of clusters (see --n_clusters option), unless --reinit option
    is specified (see below).
  id: rec_lust
  inputBinding:
    prefix: --reclust
  type: string
- doc: This option has effect only if combined with the --reclust option. It allows
    to recompute the entire analysis and then recluster with the specified number
    of clusters.
  id: reinit
  inputBinding:
    prefix: --reinit
  type: boolean
- doc: 'List of of mean ploidy intervals: cells which mean ploidies are in the specified
    ranges are filtered out'
  id: intervals
  inputBinding:
    prefix: --intervals
  type:
    items: string
    type: array
- doc: 'List of of mean ploidy values: cells which mean ploidies are equal to the
    specified ones are filtered out'
  id: values
  inputBinding:
    prefix: --values
  type:
    items: string
    type: array
- doc: Directory name for ROOT_DIR/genomes/${chosen_genome}
  id: genome
  inputBinding:
    prefix: --genome
  type: string
- doc: 'A complex value made of the concatenation of - type: variable or fixed (bins.
    Variable refers to amount of mappable genome, recommended); - size: bin size;
    - read-length: mapped reads length; - aligner: bowtie or bwa. The read-length
    and aligner refer to the simulations of re-mapping reads of that length with that
    aligner on the whole genome. This is used to calculate bins of "mappable" (i.e.
    variable) genome.The resulting value is the name of a file under ginkgo/genomes/$choosen_genome/original/
    with the bin coordinates.'
  id: binning
  inputBinding:
    prefix: --binning
  type: string
- doc: Verbose execution.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
