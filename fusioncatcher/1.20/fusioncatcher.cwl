class: CommandLineTool
id: fusioncatcher.py.cwl
inputs:
- id: input
  doc: 'The input file(s) or directory. The files should be in FASTQ or SRA format
    and may be or not compressed using gzip or zip. A list of files can be specified
    by given the filenames separated by comma. If a directory is given then it will
    analyze all the files found with the following extensions: .sra, .fastq, .fastq.zip,
    .fastq.gz, .fastq.bz2, fastq.xz, .fq, .fq.zip, .fq.gz, .fq.bz2, fz.xz, .txt, .txt.zip,
    .txt.gz, .txt.bz2 .'
  type: string
  inputBinding:
    prefix: --input
- id: batch
  doc: "If this is used then batch mode is used and the input specified using '--input'\
    \ or '-i' is: (i) a tab- separated text file containing a each line such that\
    \ there is one sample per line and first column are the FASTQ files' full pathnames/URLs,\
    \ separated by commas, corresponding to the sample and an optional second column\
    \ containing the name for the sample, or (ii) a input directory which contains\
    \ a several subdirectories such that each subdirectory corresponds to only one\
    \ sample and it contains all the FASTQ files corresponding to that sample. This\
    \ is useful when several samples needs to be analyzed."
  type: boolean
  inputBinding:
    prefix: --batch
- id: single_end
  doc: If this is used then it is assumed that all the input reads are single-end
    reads which must be longer than 130 bp. Be default it is assumed that all input
    reads come from a paired-end reads.
  type: boolean
  inputBinding:
    prefix: --single-end
- id: normal
  doc: The input file(s) or directory containing the healthy normal-matched data.
    They should be given in the same format as for '--input'. In case that this option
    is used then the files/directory given to '--input' is considered to be from the
    sample of a patient with disease. This is optional.
  type: string
  inputBinding:
    prefix: --normal
- id: output
  doc: The output directory where all the output files containing information about
    the found candidate fusiongenes are written. Default is 'none'.
  type: string
  inputBinding:
    prefix: --output
- id: data
  doc: The data directory where all the annotations files from Ensembl database are
    placed, e.g. 'data/'. This directory should be built using 'fusioncatcher-build'.
    If it is not used then it is read from configuration file specified with '--config'
    from 'data = ...' line.
  type: string
  inputBinding:
    prefix: --data
- id: tmp
  doc: The temporary directory where all the outputs files and directories will be
    written. Default is directory 'tmp' in the output directory specified with '--
    output'.
  type: string
  inputBinding:
    prefix: --tmp
- id: threads
  doc: Number or processes/threads to be used for running SORT, Bowtie, BLAT, STAR,
    BOWTIE2 and other tools/programs. If it is 0 (as it is by default) then the number
    of processes/threads will be read first from 'fusioncatcher/etc/configuration.cfg'
    file. If even there it is still set to 0 then 'min(number-of- CPUs-found,16)'
    processes will be used. Setting number of threads in 'fusioncatcher/etc/configuration.cfg'
    might be usefull in situations where one server is shared between several users
    and in order to limit FusionCatcher using all the CPUs/resources.Default is '0'.
  type: string
  inputBinding:
    prefix: --threads
- id: config
  doc: Configuration file containing the paths to external tools (e.g. Bowtie, Blat,
    fastq-dump.) in case that they are not specified in PATH variable! Default is
    '/ tmp/tmpg5gctayr/etc/configuration.cfg,/tmp/tmpg5gctayr /bin/configuration.cfg'.
  type: string
  inputBinding:
    prefix: --config
- id: force_paths
  doc: If it is specified then all external tools and all Python tools will be executed
    by FusionCatcher by using their corresponding absolute paths, which will be obined
    from the fusioncatcher/bin/configuration.cfg file. By default no paths are specified
    when executing tools/scripts. Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --force-paths
- id: no_update_check
  doc: Skips the automatic routine that contacts the FusionCatcher server to check
    for a more recent version. Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --no-update-check
- id: keep_viruses_alignments
  doc: If it is set then the SAM alignments files of reads mapping on viruses genomes
    are saved in the output directory for later inspection by the user. Default is
    'False'.
  type: boolean
  inputBinding:
    prefix: --keep-viruses-alignments
- id: keep_unmapped_reads
  doc: If it is set then the FASTQ files, containing the unmapped reads (i.e. reads
    which do not map on genome and transcriptome), are saved in the output directory
    for later inspection by the user. Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --keep-unmapped-reads
- id: aligners
  doc: "The aligners to be used on Bowtie aligner. By default always BOWTIE aligner\
    \ is used and it cannot be disabled. The choices are: ['blat','star','bowtie2'].\
    \ Any combination of these is accepted if the aligners' names are comma separated.\
    \ For example, if one wants to used all four aligners then 'blat,star,bowtie2'\
    \ should be given. The command line options '--skip- blat', '--skip-star', and\
    \ '--skip-bowtie2' have priority over this option. If the first element in the\
    \ list is the configuration file (that is '.cfg' file) of FusionCatcher then the\
    \ aligners specified in the list of aligners specified in the configuration file\
    \ will be used (and the rest of aligner specified here will be ignored). In case\
    \ that the configuration file is not found then the following aligners from the\
    \ list will be used. Default is '/tmp/tmpg5gctayr/etc/configuration.cfg,blat,star'."
  type: string
  inputBinding:
    prefix: --aligners
- id: skip_blat
  doc: "If it is set then the pipeline will NOT use the BLAT aligner and all options\
    \ and methods which make use of BLAT will be disabled. BLAT aligner is used by\
    \ default. Please, note that BLAT license does not allow BLAT to be used for commercial\
    \ activities. Fore more information regarding BLAT please see its license: <http://users.soe.ucsc.edu/~kent/src/>.\
    \ Default is 'False'."
  type: boolean
  inputBinding:
    prefix: --skip-blat
- id: skip_star
  doc: If it is set then the pipeline will NOT use the STAR aligner and all options
    and methods which make use of STAR will be disabled. STAR aligner is used by default.
    Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --skip-star
- id: skip_conversion_grch37
  doc: If it is set then the fusion coordinates for human genome version GRCh38 (which
    is default) will NOT be reported also using version GRCh37/hg19. Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --skip-conversion-grch37
- id: limits_jdb_insert_ns_j
  doc: This option is passed diretly to STAR aligner For more info see STAR aligner
    regarding this option. Default is '2000000'.
  type: string
  inputBinding:
    prefix: --limitSjdbInsertNsj
- id: limit_out_sj_collapsed
  doc: This option is passed diretly to STAR aligner For more info see STAR aligner
    regarding this option. Default is '1000000'.
  type: string
  inputBinding:
    prefix: --limitOutSJcollapsed
- id: sort_buffer_size
  doc: It specifies the buffer size for command SORT. Default is '80%' if less than
    32GB RAM is installed on computer else is set to 26GB.
  type: string
  inputBinding:
    prefix: --sort-buffer-size
- id: start
  doc: It re-starts executing the workflow/pipeline from the given step number. This
    can be used when the pipeline has crashed/stopped and one wants to re-run it from
    from the step where it stopped without re-running from the beginning the entire
    pipeline. 0 is for restarting automatically and 1 is the first step. Default is
    '0'.
  type: string
  inputBinding:
    prefix: --start
- id: x_mx
  doc: The amount of memory to be used by Java tools. This will be passed to Javas
    '-Xmx' so for more info see '-Xmx' in java.Default is '18g'.
  type: string
  inputBinding:
    prefix: --Xmx
outputs: []
cwlVersion: v1.1
baseCommand:
- fusioncatcher.py
