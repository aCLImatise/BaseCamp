class: CommandLineTool
id: aquamis.cwl
inputs:
- id: in_sample_list
  doc: List of samples to assemble, format as defined by ...
  type: string?
  inputBinding:
    prefix: --sample_list
- id: in_working_directory
  doc: Working directory
  type: Directory?
  inputBinding:
    prefix: --working_directory
- id: in_snake_file
  doc: "Path to Snakefile of bakcharak pipeline; default: path\nto Snakefile in same\
    \ directory"
  type: File?
  inputBinding:
    prefix: --snakefile
- id: in_run_name
  doc: "Name of the sequencing run for all samples in the\nsample list, e.g.\n\"210401_M02387_0709_000000000-HBXX6\"\
    , or a self-chosen\nanalysis title"
  type: long?
  inputBinding:
    prefix: --run_name
- id: in_docker
  doc: Mapped volume path of the host system
  type: File?
  inputBinding:
    prefix: --docker
- id: in_qc_thresholds
  doc: "Definition of thresholds in JSON file; default: /usr/l\nocal/opt/aquamis/thresholds/AQUAMIS_thresholds.json"
  type: File?
  inputBinding:
    prefix: --qc_thresholds
- id: in_json_schema
  doc: "JSON schema used for validation; default: /usr/local/o\npt/aquamis/resources/AQUAMIS_schema_v20210226.json"
  type: long?
  inputBinding:
    prefix: --json_schema
- id: in_json_filter
  doc: "Definition of thresholds in JSON file; default: /usr/l\nocal/opt/aquamis/thresholds/AQUAMIS_schema_filter_v202\n\
    10226.json"
  type: File?
  inputBinding:
    prefix: --json_filter
- id: in_mash_db
  doc: "Path to reference mash database; default:/usr/local/op\nt/aquamis/reference_db/mash/mashDB.msh"
  type: File?
  inputBinding:
    prefix: --mashdb
- id: in_mash_km_er_size
  doc: "kmer size for mash, must match size of database;\ndefault: 21"
  type: long?
  inputBinding:
    prefix: --mash_kmersize
- id: in_mash_sketch_size
  doc: "sketch size for mash, must match size of database;\ndefault: 1000"
  type: long?
  inputBinding:
    prefix: --mash_sketchsize
- id: in_kraken_two_db
  doc: "Path to kraken2 database; default:\n/usr/local/opt/aquamis/reference_db/kraken2"
  type: long?
  inputBinding:
    prefix: --kraken2db
- id: in_tax_level_qc
  doc: "Taxonomic level for kraken2 classification quality\ncontrol. Choose S for\
    \ species or G for genus; default:\n\"G\""
  type: long?
  inputBinding:
    prefix: --taxlevel_qc
- id: in_read_length
  doc: "Read length to be used in bracken abundance\nestimation; default: 150"
  type: long?
  inputBinding:
    prefix: --read_length
- id: in_tax_on_kit_db
  doc: "Path to taxonkit_db;\ndefault:/usr/local/opt/aquamis/reference_db/taxonkit"
  type: File?
  inputBinding:
    prefix: --taxonkit_db
- id: in_con_find_r_database
  doc: "Path to confindr databases;\ndefault:/usr/local/opt/aquamis/reference_db/confindr"
  type: File?
  inputBinding:
    prefix: --confindr_database
- id: in_min_trimmed_length
  doc: 'Minimum length of a read to keep; default: 15'
  type: long?
  inputBinding:
    prefix: --min_trimmed_length
- id: in_assembler
  doc: "Assembler to use in shovill, choose from megahit\nvelvet skesa spades; default:\
    \ \"spades\""
  type: string?
  inputBinding:
    prefix: --assembler
- id: in_shov_ill_output_options
  doc: 'Extra output options for shovill; default: ""'
  type: string?
  inputBinding:
    prefix: --shovill_output_options
- id: in_shov_ill_depth
  doc: "Sub-sample --R1/--R2 to this depth. Disable with\n--depth 0; default: 100"
  type: long?
  inputBinding:
    prefix: --shovill_depth
- id: in_shov_ill_ram
  doc: 'Limit amount of RAM provided to shovill; default: 16'
  type: long?
  inputBinding:
    prefix: --shovill_ram
- id: in_shov_ill_tmpdir
  doc: 'Fast temporary directory; default: "/tmp/shovill"'
  type: Directory?
  inputBinding:
    prefix: --shovill_tmpdir
- id: in_shov_ill_extra_opts
  doc: 'Extra options for shovill; default: ""'
  type: string?
  inputBinding:
    prefix: --shovill_extraopts
- id: in_shov_ill_modules
  doc: "Module options for shovill; choose from --noreadcorr\n--trim --nostitch --nocorr\
    \ --noreadcorr; default: \"--\nnoreadcorr\""
  type: string?
  inputBinding:
    prefix: --shovill_modules
- id: in_mlst_scheme
  doc: 'Extra options for MLST; default: ""'
  type: string?
  inputBinding:
    prefix: --mlst_scheme
- id: in_threads
  doc: "Number of Threads to use. Ideally multiple of 10;\ndefault: 10"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_threads_sample
  doc: 'Number of Threads to use per sample; default: 1'
  type: long?
  inputBinding:
    prefix: --threads_sample
- id: in_cond_a_prefix
  doc: "Path of default conda environment, enables recycling\nbuilt environments;\
    \ default: \"<AQUAMIS>/conda_env\""
  type: File?
  inputBinding:
    prefix: --condaprefix
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
- id: in_force
  doc: "Snakemake force. Force recalculation of output (rule\nor file) speciefied\
    \ here"
  type: File?
  inputBinding:
    prefix: --force
- id: in_fix_fails
  doc: Re-run snakemake after failure removing failed samples
  type: boolean?
  inputBinding:
    prefix: --fix_fails
- id: in_unlock
  doc: Unlock a snakemake execution folder if it had been
  type: boolean?
  inputBinding:
    prefix: --unlock
- id: in_use_cond_a
  doc: "Utilize the Snakemake \"--useconda\" option, i.e. Smk\nrules require execution\
    \ with a specific conda env"
  type: boolean?
  inputBinding:
    prefix: --use_conda
- id: in_cond_a_front_end
  doc: "Do not use mamba but conda as frontend to create\nindividual conda environments"
  type: boolean?
  inputBinding:
    prefix: --conda_frontend
- id: in_remove_temp
  doc: "Remove large temporary files. May lead to slower re-\nruns but saves disk\
    \ space."
  type: boolean?
  inputBinding:
    prefix: --remove_temp
- id: in_logdir
  doc: "Path to directory where .snakemake output is to be\nsaved\n"
  type: File?
  inputBinding:
    prefix: --logdir
- id: in_interrupted
  doc: --no_assembly         Only trimming and kraken analysis
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: "Snakemake force. Force recalculation of output (rule\nor file) speciefied\
    \ here"
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
- id: out_logdir
  doc: "Path to directory where .snakemake output is to be\nsaved\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_logdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aquamis:1.3.3--0
cwlVersion: v1.1
baseCommand:
- aquamis
