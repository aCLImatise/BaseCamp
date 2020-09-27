class: CommandLineTool
id: phylics.cwl
inputs:
- id: in_output_path
  doc: '[--output_prefix out_prefix] [--tasks N]'
  type: File
  inputBinding:
    prefix: --output_path
- id: in_run
  doc: 'Run the pipeline. USAGE: phylics --run [--run_cnvs |'
  type: boolean
  inputBinding:
    prefix: --run
- id: in_run_single
  doc: '| --run_multiple] --input_dirs'
  type: boolean
  inputBinding:
    prefix: --run_single
- id: in_run_one_zero_x_preproc
  doc: "Run 10x data pre-processing module. USAGE: phylics\n--run_10x_preproc --input_dirs\n\
    sample_name:10x_out_path --output_path out_oath\n[--output_prefix out_prefix]\
    \ [--verbose]. Only single-\nsample execution is available for this option: only\n\
    the first input directory is considered, even if more\nthan one has been declared."
  type: boolean
  inputBinding:
    prefix: --run_10x_preproc
- id: in_run_cell_filtering
  doc: "Run the cell filtering module. USAGE: phylics\n--run_cell_filtering --input_dirs\n\
    sample_name:input_path --intervals [v1-v2 [v1-v2 ...]\n--values [v [v ...]] --output_path\
    \ out_path\n[--output_prefix out_prefix] [--verbose]. Only single-\nsample execution\
    \ is available for this option: only\nthe first input directory is considered,\
    \ even if more\nthan one has been declared. NOTE that at least one of\nthe two\
    \ options, \"--intervals\" and \"--values\", must\ncontain values to make this\
    \ command effective."
  type: boolean
  inputBinding:
    prefix: --run_cell_filtering
- id: in_run_cn_vs
  doc: "Run only the CNV calling stage. USAGE: phylics --run\n--run_cnvs --input_dirs\
    \ beds_dir [beds_dir ...]\n--genome hg19 --binning variable_500000_101_bwa\n[--init_ginkgo]\
    \ [--verbose]"
  type: boolean
  inputBinding:
    prefix: --run_cnvs
- id: in_run_multiple
  doc: "Run only the multiple-sample analysis stage. USAGE:\nphylics --run --run_multiple\
    \ --input_dirs\nsample:input_dir [sample:input_dir ...] --output_path\nout_path\
    \ [--output_prefix out_prefix] [--verbose]"
  type: boolean
  inputBinding:
    prefix: --run_multiple
- id: in_input_dirs
  doc: ":input_dir [sample_name:input_dir ...]\nPairs made of sample name and directory\
    \ path,\nseparated by \":\", for each input sample. Sample name\nand input directory\
    \ path cannot contain \":\""
  type: File
  inputBinding:
    prefix: --input_dirs
- id: in_method
  doc: Clustering method (default = complete)
  type: string
  inputBinding:
    prefix: --method
- id: in_metric
  doc: Distance metric
  type: string
  inputBinding:
    prefix: --metric
- id: in_output_prefix
  doc: "A string to be pre-pended to the names automatically\ngenerated for the output\
    \ directories"
  type: string
  inputBinding:
    prefix: --output_prefix
- id: in_tasks
  doc: "Maximum number of tasks to be run in parallel. It\nallows to execute single-sample\
    \ analyses in parallel\nand to parallelize the permutation test execution for\n\
    the heterogeneity score computation."
  type: long
  inputBinding:
    prefix: --tasks
- id: in_seed
  doc: "Seed to initialize the pseudo-random generator used to\nperform the permutation\
    \ test."
  type: string
  inputBinding:
    prefix: --seed
- id: in_n_permutations
  doc: "Number of permutations to execute the permutation test\nfor the heterogeneity\
    \ score computation."
  type: long
  inputBinding:
    prefix: --n_permutations
- id: in_rec_lust
  doc: "If this option is specified, only the clustering part\nis executed with the\
    \ specified number of clusters (see\n--n_clusters option), unless --reinit option\
    \ is\nspecified (see below)."
  type: long
  inputBinding:
    prefix: --reclust
- id: in_reinit
  doc: This option has effect only if combined with the
  type: boolean
  inputBinding:
    prefix: --reinit
- id: in_intervals
  doc: "List of of mean ploidy intervals: cells which mean\nploidies are in the specified\
    \ ranges are filtered out"
  type: long[]
  inputBinding:
    prefix: --intervals
- id: in_values
  doc: "List of of mean ploidy values: cells which mean\nploidies are equal to the\
    \ specified ones are filtered\nout"
  type: string[]
  inputBinding:
    prefix: --values
- id: in_genome
  doc: Directory name for ROOT_DIR/genomes/${chosen_genome}
  type: Directory
  inputBinding:
    prefix: --genome
- id: in_binning
  doc: "A complex value made of the concatenation of - type:\nvariable or fixed (bins.\
    \ Variable refers to amount of\nmappable genome, recommended); - size: bin size;\
    \ -\nread-length: mapped reads length; - aligner: bowtie or\nbwa. The read-length\
    \ and aligner refer to the\nsimulations of re-mapping reads of that length with\n\
    that aligner on the whole genome. This is used to\ncalculate bins of \"mappable\"\
    \ (i.e. variable)\ngenome.The resulting value is the name of a file under\nginkgo/genomes/$choosen_genome/original/\
    \ with the bin\ncoordinates."
  type: long
  inputBinding:
    prefix: --binning
- id: in_verbose
  doc: Verbose execution.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: '[--output_prefix out_prefix] [--tasks N]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_path)
cwlVersion: v1.1
baseCommand:
- phylics
