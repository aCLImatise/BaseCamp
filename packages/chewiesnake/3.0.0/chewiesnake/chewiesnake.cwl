class: CommandLineTool
id: chewiesnake.cwl
inputs:
- id: in_prodigal
  doc: '[--bsr_threshold BSR_THRESHOLD]'
  type: string?
  inputBinding:
    prefix: --prodigal
- id: in_sample_list
  doc: "List of samples to analyze, as a two column tsv file\nwith columns sample\
    \ and assembly. Can be generated\nwith provided script create_sampleSheet,sh"
  type: File?
  inputBinding:
    prefix: --sample_list
- id: in_working_directory
  doc: Working directory where results are saved
  type: Directory?
  inputBinding:
    prefix: --working_directory
- id: in_cond_a_prefix
  doc: "Path of default conda environment, enables recycling\nbuilt environments,\
    \ default is in folder conda_env in\nrepository directory."
  type: File?
  inputBinding:
    prefix: --condaprefix
- id: in_reads
  doc: "Input data is reads. Assemble (using shovill) prior to\nallele calling (default\
    \ is contigs)"
  type: boolean?
  inputBinding:
    prefix: --reads
- id: in_scheme
  doc: Path to directory of the cgmlst scheme
  type: File?
  inputBinding:
    prefix: --scheme
- id: in_bsr_threshold
  doc: blast scoring ratio threshold to use , default = 0.6
  type: double?
  inputBinding:
    prefix: --bsr_threshold
- id: in_size_threshold
  doc: "size threshold, default at 0.2 means alleles with size\nvariation of +-20\
    \ percent will be tagged as ASM/ALM ,\ndefault = 0.2"
  type: long?
  inputBinding:
    prefix: --size_threshold
- id: in_distance_method
  doc: Grapetree distance method; default = 3
  type: long?
  inputBinding:
    prefix: --distance_method
- id: in_clustering_method
  doc: "The agglomeration method to be used for hierarchical\nclustering. This should\
    \ be (an unambiguous\nabbreviation of) one of \"ward.D\", \"ward.D2\", \"single\"\
    ,\n\"complete\", \"average\" (= UPGMA), \"mcquitty\" (= WPGMA),\n\"median\" (=\
    \ WPGMC) or \"centroid\" (= UPGMC); default =\nsingle"
  type: long?
  inputBinding:
    prefix: --clustering_method
- id: in_distance_threshold
  doc: "A single distance threshold for the extraction of sub-\ntrees; default = 10"
  type: long?
  inputBinding:
    prefix: --distance_threshold
- id: in_address_range
  doc: "A comma separated set of cutoff values for defining\nthe clustering address\
    \ (Default:\n1,5,10,20,50,100,200,1000)"
  type: long?
  inputBinding:
    prefix: --address_range
- id: in_report
  doc: Create html report
  type: boolean?
  inputBinding:
    prefix: --report
- id: in_comparison
  doc: Compare these results to pre-computed allele database
  type: boolean?
  inputBinding:
    prefix: --comparison
- id: in_comparison_db
  doc: Path to pre-computed allele database for comparison
  type: File?
  inputBinding:
    prefix: --comparison_db
- id: in_joining_threshold
  doc: "A distance threshold for joining data with\ncomparsion_db; default = 30"
  type: long?
  inputBinding:
    prefix: --joining_threshold
- id: in_remove_frame_shifts
  doc: remove frameshift alleles by deviating allele length
  type: boolean?
  inputBinding:
    prefix: --remove_frameshifts
- id: in_allele_length_threshold
  doc: "Maximum tolerated allele length deviance compared to\nmedian allele length\
    \ of locus; choose integer for\n\"absolute frameshift mode and float (0..1) for\n\
    \"relative\" frameshift mode ; default=0.1"
  type: long?
  inputBinding:
    prefix: --allele_length_threshold
- id: in_frameshift_mode
  doc: "Whether to consider absolute or relative differences\nof allele length for\
    \ frameshifts removal. Choose from\n\"absolute\" and \"relative\", default=\"\
    relative\""
  type: long?
  inputBinding:
    prefix: --frameshift_mode
- id: in_min_trimmed_length
  doc: Minimum length of a read to keep, default = 15
  type: long?
  inputBinding:
    prefix: --min_trimmed_length
- id: in_assembler
  doc: "Assembler to use in shovill, choose from megahit\nvelvet skesa spades (default:\
    \ spades)"
  type: string?
  inputBinding:
    prefix: --assembler
- id: in_shov_ill_output_options
  doc: 'Extra output options for shovill (default: "")'
  type: string?
  inputBinding:
    prefix: --shovill_output_options
- id: in_shov_ill_extra_opts
  doc: 'Extra options for shovill (default: "")'
  type: string?
  inputBinding:
    prefix: --shovill_extraopts
- id: in_shov_ill_modules
  doc: "Module options for shovill, choose from --noreadcorr\n--trim --nostitch --nocorr\
    \ --noreadcorr (default: \"--\nnoreadcorr\")"
  type: string?
  inputBinding:
    prefix: --shovill_modules
- id: in_shov_ill_depth
  doc: "Sub-sample --R1/--R2 to this depth. Disable with\n--depth 0 (default: 100)"
  type: long?
  inputBinding:
    prefix: --shovill_depth
- id: in_shov_ill_tmpdir
  doc: 'Fast temporary directory (default: "")'
  type: Directory?
  inputBinding:
    prefix: --shovill_tmpdir
- id: in_use_cond_a
  doc: "Utilize \"--useconda\" option, i.e. all software\ndependencies are available\
    \ in a single env"
  type: boolean?
  inputBinding:
    prefix: --use_conda
- id: in_cond_a_front_end
  doc: "Do not mamba but conda as frontend to create\nindividual module' software\
    \ environments"
  type: boolean?
  inputBinding:
    prefix: --conda_frontend
- id: in_threads_sample
  doc: Number of Threads to use per sample, default = 10
  type: long?
  inputBinding:
    prefix: --threads_sample
- id: in_threads
  doc: "Number of Threads to use. Note that samples can only\nbe processed sequentially\
    \ due to the required database\naccess. However the allele calling can be executed\
    \ in\nparallel for the different loci, default = 10"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_dry_run
  doc: "Snakemake dryrun. Only calculate graph without\nexecuting anything"
  type: boolean?
  inputBinding:
    prefix: --dryrun
- id: in_force_all
  doc: Snakemake force. Force recalculation of all steps
  type: boolean?
  inputBinding:
    prefix: --forceall
- id: in_unlock
  doc: unlock snakemake
  type: boolean?
  inputBinding:
    prefix: --unlock
- id: in_logdir
  doc: "Path to directory whete .snakemake output is to be\nsaved\n"
  type: File?
  inputBinding:
    prefix: --logdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_logdir
  doc: "Path to directory whete .snakemake output is to be\nsaved\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_logdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chewiesnake:3.0.0--1
cwlVersion: v1.1
baseCommand:
- chewiesnake
