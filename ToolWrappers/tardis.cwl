class: CommandLineTool
id: tardis.cwl
inputs:
- id: in_in_workflow
  doc: "Run the command as part of a workflow. After launching\nall of the jobs, tardis\
    \ waits for all outputs, which\nare then collated and merged into a single output\n\
    file, as specified by the output file path in the\noriginal command; all of the\
    \ temporary input files\n(for example chunks of uncompressed fastq) are deleted\n\
    provided all prior steps completed without error (if\nthere was an error they\
    \ are left there to assist with\ndebugging). Without this option, the program\
    \ exits\nimmediately after launching all of the jobs, and\noutput is left un-collated\
    \ in the scratch folder\ncreated by this script, and no cleanup is done."
  type: boolean
  inputBinding:
    prefix: --in-workflow
- id: in_chunksize
  doc: "When conditioning the input file(s), split into files\neach containing N logical\
    \ records. (A logical record\nfor a sequence file is a complete sequence. For\
    \ a text\nfile it is a line of text). (If the -s option is used\nto sample the\
    \ inputs, the chunksize relates to the\nfull un-sampled file . so the same chunk-size\
    \ can be\nused whether random sampling or not. For example a\nchunksize of 1,000,000\
    \ is specified in combination\nwith a sampling rate of .0001, then each chunk\
    \ would\ncontain 100 sequences . i.e. you should not adjust the\nchunk-size, for\
    \ the sampling rate. Note that to avoid\na race-condition that could be caused\
    \ by a very small\nchunk-size resulting in launching a very large number\nof jobs,\
    \ tardis will throw an exception if the chunk-\nsize used would result in launching\
    \ more than\nMAX_DIMENSION jobs (currently 5000) )"
  type: long
  inputBinding:
    prefix: --chunksize
- id: in_from_record
  doc: "When conditioning the input file(s), only use records\nfrom the input file\
    \ after or including N (where that\nis logical record number . e.g. in a fastq\
    \ file, start\nfrom record number N means start from sequence N). By\ncombining\
    \ this option with -to, you can process slices\nof a file. Note that this option\
    \ has no affect when\nprocessing a list-file."
  type: long
  inputBinding:
    prefix: --from-record
- id: in_to_record
  doc: "When conditioning the input file(s), only use records\nup to and including\
    \ the record N (where that is\nlogical record number . e.g. in a fastq file, process\n\
    up to record number N means process up to and\nincluding sequence N). By combining\
    \ this option with\n-from, you can process slices of a file. Note that\nthis option\
    \ has no affect when processing a list-file."
  type: long
  inputBinding:
    prefix: --to-record
- id: in_rather_process_files
  doc: "Rather than process the entire input file(s), a random\nsample of the records\
    \ is processed. RATE is the\nprobability that a given record will be sampled.\
    \ For\nexample -s .001 will result in roughly 1 in every 1000\nlogical records\
    \ being sampled. When the -s option is\nspecified, tardis does not clean up the\
    \ conditioned\ninput and output . e.g. all of the uncompressed fastq\nsample fragments\
    \ would be retained. These are retained\nto assist with the Q/C work that is normally\n\
    associated with a sampled run. Paired fastq input\nfiles are sampled in lock-step,\
    \ provided the paired\nfastq conditioning directive is used for both files."
  type: File
  inputBinding:
    prefix: -s
- id: in_rootdir
  doc: "create the tardis working folder under DIR. If no\nworking root is specified,\
    \ a default location is used."
  type: Directory
  inputBinding:
    prefix: --rootdir
- id: in_dry_run
  doc: "validate the run by doing a dry run. This means that\nthe chunks, job scripts\
    \ and job files etc. are all\ngenerated but the jobs are not launched. The user\
    \ can\nstart then kill (CTRL-C) the run, inspect the script\nand job files that\
    \ were generated to check that their\ncommand has been conditioned as envisaged."
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_keep_conditioned_data
  doc: "keep the conditioned input and output - i.e. the input\nand output fragments.\
    \ Normally in workflow mode these\nare deleted after the output is successfully\n\
    \"unconditioned\" - i.e. joined back together"
  type: boolean
  inputBinding:
    prefix: --keep-conditioned-data
- id: in_job_file
  doc: "optionally supply a job template - tardis will read\nthe contents of FILE\
    \ and use this as the job template."
  type: File
  inputBinding:
    prefix: --job-file
- id: in_templatedir
  doc: template directory
  type: Directory
  inputBinding:
    prefix: --templatedir
- id: in_job_template_name
  doc: job template name, resolved in template directory
  type: Directory
  inputBinding:
    prefix: --job-template-name
- id: in_hpc_type
  doc: "indicate the hpc environment. Currently the only\nsupported values are: condor\
    \ which results in tardis\nattempting to set up and launch condor jobs; local\n\
    which results in each job being launched by tardis\nitself on the local machine,\
    \ using the native python\nsub-process API. The maximum number of processes it\n\
    will run at a time is controlled by a global variable\nin the script MAX_PROCESSES,\
    \ which is initially 10;\nslurm which results in tardis attempting to set up and\n\
    launch slurm jobs."
  type: long
  inputBinding:
    prefix: --hpctype
- id: in_baton_file
  doc: "if you supply a \"baton file\" FILE, tardis will write\nthe process exit code\
    \ to this file after all\nprocessing has completed. This can be useful to\npreserve\
    \ synchronous execution of a workflow, even if\ntardis is started in the background\
    \ - the workflow can\ntest the existence of the batonfile - if it exists\nthen\
    \ the corresponding tardis processing step has\ncompleted (i.e. another way of\
    \ each step in a workflow\n\"passing the baton\" to the next step)"
  type: File
  inputBinding:
    prefix: --batonfile
- id: in_runtime_config_source_file
  doc: shell script fragment included in jobs
  type: File
  inputBinding:
    prefix: --runtimeconfigsourcefile
- id: in_quiet
  doc: run quietly
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_user_config
  doc: user configuration file
  type: File
  inputBinding:
    prefix: --userconfig
- id: in_no_sysconfig
  doc: ignore the system configuration file
  type: boolean
  inputBinding:
    prefix: --no-sysconfig
- id: in_command
  doc: command to run
  type: string
  inputBinding:
    position: 0
- id: in_arg
  doc: command arguments
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tardis
