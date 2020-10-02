class: CommandLineTool
id: ../../../run_snp_pipeline.sh.cwl
inputs:
- id: in_force
  doc: "Force processing even when result files already exist\nand are newer than\
    \ inputs (default: False)"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_mirror
  doc: "Create a mirror copy of the reference directory and\nall the sample directories.\
    \  Use this option to avoid\npolluting the reference directory and sample\ndirectories\
    \ with the intermediate files generated by\nthe snp pipeline.  A \"reference\"\
    \ subdirectory and a\n\"samples\" subdirectory are created under the output\n\
    directory (see the -o option).  One directory per\nsample is created under the\
    \ \"samples\" directory.\nThree suboptions allow a choice of how the reference\n\
    and samples are mirrored.\n-m soft : creates soft links to the fasta and fastq\n\
    files instead of copying\n-m hard : creates hard links to the fasta and fastq\n\
    files instead of copying\n-m copy : copies the fasta and fastq files\n(default:\
    \ None)"
  type: Directory
  inputBinding:
    prefix: --mirror
- id: in_conf
  doc: "Relative or absolute path to a configuration file for\noverriding defaults\
    \ and defining extra parameters for\nthe tools and scripts within the pipeline.\n\
    Note: A default parameter configuration file named\n\"snppipeline.conf\" is used\
    \ whenever the pipeline\nis run without the -c option.  The configuration\nfile\
    \ used for each run is copied into the log\ndirectory, capturing the parameters\
    \ used during\nthe run. (default: None)"
  type: File
  inputBinding:
    prefix: --conf
- id: in_slurmtorque__queuemgr
  doc: "|slurm|torque, --queue_mgr grid|slurm|torque\nJob queue manager for remote\
    \ parallel job execution in\nan HPC environment. Currently \"grid\", \"slurm\"\
    , and\n\"torque\" are supported. If not specified, the pipeline\nwill execute\
    \ locally. (default: None)"
  type: string
  inputBinding:
    prefix: -Q
- id: in_out_dir
  doc: "Output directory for the result files. Additional\nsubdirectories are automatically\
    \ created under the\noutput directory for logs files and the mirrored\nsamples\
    \ and reference files (see the -m option). The\noutput directory will be created\
    \ if it does not\nalready exist. If not specified, the output files are\nwritten\
    \ to the current working directory. If you re-\nrun the pipeline on previously\
    \ processed samples, and\nspecify a different output directory, the pipeline\n\
    will not rebuild everything unless you either force a\nrebuild (see the -f option)\
    \ or you request mirrored\ninputs (see the -m option). (default: .)"
  type: Directory
  inputBinding:
    prefix: --out_dir
- id: in_samples_dir
  doc: "Relative or absolute path to the parent directory of\nall the sample directories.\
    \  The -s option should be\nused when all the sample directories are in\nsubdirectories\
    \ immediately below a parent directory.\nNote: You must specify either the -s\
    \ or -S option, but\nnot both.\nNote: The specified directory should contain only\
    \ a\ncollection of sample directories, nothing else.\nNote: Unless you request\
    \ mirrored inputs, see the\n-m option, additional files will be written to\neach\
    \ of the sample directories during the\nexecution of the SNP Pipeline (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --samples_dir
- id: in_samples_file
  doc: "Relative or absolute path to a file listing all of the\nsample directories.\
    \  The -S option should be used when\nthe samples are not under a common parent\
    \ directory.\nNote: If you are not mirroring the samples (see the\n-m option),\
    \ you can improve parallel processing\nperformance by sorting the the list of\n\
    directories descending by size, largest first.\nThe -m option automatically generates\
    \ a sorted\ndirectory list.\nNote: You must specify either the -s or -S option,\
    \ but\nnot both.\nNote: Unless you request mirrored inputs, see the\n-m option,\
    \ additional files will be written to\neach of the sample directories during the\n\
    execution of the SNP Pipeline (default: None)"
  type: File
  inputBinding:
    prefix: --samples_file
- id: in_purge
  doc: "Purge the intermediate output files (the entire\n\"samples\" directory) when\
    \ the pipeline completes\nsuccessfully. (default: False)"
  type: Directory
  inputBinding:
    prefix: --purge
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long
  inputBinding:
    prefix: --verbose
- id: in_cfsan_snp_pipeline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_run
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mirror
  doc: "Create a mirror copy of the reference directory and\nall the sample directories.\
    \  Use this option to avoid\npolluting the reference directory and sample\ndirectories\
    \ with the intermediate files generated by\nthe snp pipeline.  A \"reference\"\
    \ subdirectory and a\n\"samples\" subdirectory are created under the output\n\
    directory (see the -o option).  One directory per\nsample is created under the\
    \ \"samples\" directory.\nThree suboptions allow a choice of how the reference\n\
    and samples are mirrored.\n-m soft : creates soft links to the fasta and fastq\n\
    files instead of copying\n-m hard : creates hard links to the fasta and fastq\n\
    files instead of copying\n-m copy : copies the fasta and fastq files\n(default:\
    \ None)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_mirror)
- id: out_purge
  doc: "Purge the intermediate output files (the entire\n\"samples\" directory) when\
    \ the pipeline completes\nsuccessfully. (default: False)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_purge)
cwlVersion: v1.1
baseCommand:
- run_snp_pipeline.sh