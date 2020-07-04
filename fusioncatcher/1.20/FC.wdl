version 1.0

task FC {
  input {
    String? input_files_directory_files
    Boolean? batch
    Boolean? single_end
    String? normal
    String? output_directory_where
    String? data
    String? tmp
    String? threads
    String? config
    Boolean? force_paths
    Boolean? no_update_check
    Boolean? keep_viruses_alignments
    Boolean? keep_unmapped_reads
    String? aligners
    Boolean? skip_blat
    Boolean? skip_star
    Boolean? skip_conversion_gr_ch_three_seven
    String? limits_jdb_insert_ns_j
    String? limit_out_sj_collapsed
    String? sort_buffer_size
    String? start
    String? x_mx
    String fusion_catcher_do_tpy
  }
  command <<<
    FC \
      ~{fusion_catcher_do_tpy} \
      ~{if defined(input_files_directory_files) then ("--input " +  '"' + input_files_directory_files + '"') else ""} \
      ~{true="--batch" false="" batch} \
      ~{true="--single-end" false="" single_end} \
      ~{if defined(normal) then ("--normal " +  '"' + normal + '"') else ""} \
      ~{if defined(output_directory_where) then ("--output " +  '"' + output_directory_where + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--force-paths" false="" force_paths} \
      ~{true="--no-update-check" false="" no_update_check} \
      ~{true="--keep-viruses-alignments" false="" keep_viruses_alignments} \
      ~{true="--keep-unmapped-reads" false="" keep_unmapped_reads} \
      ~{if defined(aligners) then ("--aligners " +  '"' + aligners + '"') else ""} \
      ~{true="--skip-blat" false="" skip_blat} \
      ~{true="--skip-star" false="" skip_star} \
      ~{true="--skip-conversion-grch37" false="" skip_conversion_gr_ch_three_seven} \
      ~{if defined(limits_jdb_insert_ns_j) then ("--limitSjdbInsertNsj " +  '"' + limits_jdb_insert_ns_j + '"') else ""} \
      ~{if defined(limit_out_sj_collapsed) then ("--limitOutSJcollapsed " +  '"' + limit_out_sj_collapsed + '"') else ""} \
      ~{if defined(sort_buffer_size) then ("--sort-buffer-size " +  '"' + sort_buffer_size + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(x_mx) then ("--Xmx " +  '"' + x_mx + '"') else ""}
  >>>
  parameter_meta {
    input_files_directory_files: "The input file(s) or directory. The files should be in FASTQ or SRA format and may be or not compressed using gzip or zip. A list of files can be specified by given the filenames separated by comma. If a directory is given then it will analyze all the files found with the following extensions: .sra, .fastq, .fastq.zip, .fastq.gz, .fastq.bz2, fastq.xz, .fq, .fq.zip, .fq.gz, .fq.bz2, fz.xz, .txt, .txt.zip, .txt.gz, .txt.bz2 ."
    batch: "If this is used then batch mode is used and the input specified using '--input' or '-i' is: (i) a tab- separated text file containing a each line such that there is one sample per line and first column are the FASTQ files' full pathnames/URLs, separated by commas, corresponding to the sample and an optional second column containing the name for the sample, or (ii) a input directory which contains a several subdirectories such that each subdirectory corresponds to only one sample and it contains all the FASTQ files corresponding to that sample. This is useful when several samples needs to be analyzed."
    single_end: "If this is used then it is assumed that all the input reads are single-end reads which must be longer than 130 bp. Be default it is assumed that all input reads come from a paired-end reads."
    normal: "The input file(s) or directory containing the healthy normal-matched data. They should be given in the same format as for '--input'. In case that this option is used then the files/directory given to '--input' is considered to be from the sample of a patient with disease. This is optional."
    output_directory_where: "The output directory where all the output files containing information about the found candidate fusiongenes are written. Default is 'none'."
    data: "The data directory where all the annotations files from Ensembl database are placed, e.g. 'data/'. This directory should be built using 'fusioncatcher-build'. If it is not used then it is read from configuration file specified with '--config' from 'data = ...' line."
    tmp: "The temporary directory where all the outputs files and directories will be written. Default is directory 'tmp' in the output directory specified with '-- output'."
    threads: "Number or processes/threads to be used for running SORT, Bowtie, BLAT, STAR, BOWTIE2 and other tools/programs. If it is 0 (as it is by default) then the number of processes/threads will be read first from 'fusioncatcher/etc/configuration.cfg' file. If even there it is still set to 0 then 'min(number-of- CPUs-found,16)' processes will be used. Setting number of threads in 'fusioncatcher/etc/configuration.cfg' might be usefull in situations where one server is shared between several users and in order to limit FusionCatcher using all the CPUs/resources.Default is '0'."
    config: "Configuration file containing the paths to external tools (e.g. Bowtie, Blat, fastq-dump.) in case that they are not specified in PATH variable! Default is '/ tmp/tmpr7lyfvkf/etc/configuration.cfg,/tmp/tmpr7lyfvkf /bin/configuration.cfg'."
    force_paths: "If it is specified then all external tools and all Python tools will be executed by FusionCatcher by using their corresponding absolute paths, which will be obined from the fusioncatcher/bin/configuration.cfg file. By default no paths are specified when executing tools/scripts. Default is 'False'."
    no_update_check: "Skips the automatic routine that contacts the FusionCatcher server to check for a more recent version. Default is 'False'."
    keep_viruses_alignments: "If it is set then the SAM alignments files of reads mapping on viruses genomes are saved in the output directory for later inspection by the user. Default is 'False'."
    keep_unmapped_reads: "If it is set then the FASTQ files, containing the unmapped reads (i.e. reads which do not map on genome and transcriptome), are saved in the output directory for later inspection by the user. Default is 'False'."
    aligners: "The aligners to be used on Bowtie aligner. By default always BOWTIE aligner is used and it cannot be disabled. The choices are: ['blat','star','bowtie2']. Any combination of these is accepted if the aligners' names are comma separated. For example, if one wants to used all four aligners then 'blat,star,bowtie2' should be given. The command line options '--skip- blat', '--skip-star', and '--skip-bowtie2' have priority over this option. If the first element in the list is the configuration file (that is '.cfg' file) of FusionCatcher then the aligners specified in the list of aligners specified in the configuration file will be used (and the rest of aligner specified here will be ignored). In case that the configuration file is not found then the following aligners from the list will be used. Default is '/tmp/tmpr7lyfvkf/etc/configuration.cfg,blat,star'."
    skip_blat: "If it is set then the pipeline will NOT use the BLAT aligner and all options and methods which make use of BLAT will be disabled. BLAT aligner is used by default. Please, note that BLAT license does not allow BLAT to be used for commercial activities. Fore more information regarding BLAT please see its license: <http://users.soe.ucsc.edu/~kent/src/>. Default is 'False'."
    skip_star: "If it is set then the pipeline will NOT use the STAR aligner and all options and methods which make use of STAR will be disabled. STAR aligner is used by default. Default is 'False'."
    skip_conversion_gr_ch_three_seven: "If it is set then the fusion coordinates for human genome version GRCh38 (which is default) will NOT be reported also using version GRCh37/hg19. Default is 'False'."
    limits_jdb_insert_ns_j: "This option is passed diretly to STAR aligner For more info see STAR aligner regarding this option. Default is '2000000'."
    limit_out_sj_collapsed: "This option is passed diretly to STAR aligner For more info see STAR aligner regarding this option. Default is '1000000'."
    sort_buffer_size: "It specifies the buffer size for command SORT. Default is '80%' if less than 32GB RAM is installed on computer else is set to 26GB."
    start: "It re-starts executing the workflow/pipeline from the given step number. This can be used when the pipeline has crashed/stopped and one wants to re-run it from from the step where it stopped without re-running from the beginning the entire pipeline. 0 is for restarting automatically and 1 is the first step. Default is '0'."
    x_mx: "The amount of memory to be used by Java tools. This will be passed to Javas '-Xmx' so for more info see '-Xmx' in java.Default is '18g'."
    fusion_catcher_do_tpy: ""
  }
}