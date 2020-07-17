version 1.0

task FusioncatcherBuild.py {
  input {
    String? output_directory_files
    String? organism
    String? config
    Boolean? force_paths
    String? web
    String? ftp_ensembl
    String? ftp_ensembl_path
    String? ftp_ucsc
    String? ftp_ncbi
    Boolean? skip_blat
    Boolean? enlarge_genes
    String? threads
    String? skip_database
    String? start
    String? hash
    Boolean? keep
    String? checksums
    String arg
  }
  command <<<
    fusioncatcher-build.py \
      ~{arg} \
      ~{if defined(output_directory_files) then ("--output " +  '"' + output_directory_files + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--force-paths" false="" force_paths} \
      ~{if defined(web) then ("--web " +  '"' + web + '"') else ""} \
      ~{if defined(ftp_ensembl) then ("--ftp-ensembl " +  '"' + ftp_ensembl + '"') else ""} \
      ~{if defined(ftp_ensembl_path) then ("--ftp-ensembl-path " +  '"' + ftp_ensembl_path + '"') else ""} \
      ~{if defined(ftp_ucsc) then ("--ftp-ucsc " +  '"' + ftp_ucsc + '"') else ""} \
      ~{if defined(ftp_ncbi) then ("--ftp-ncbi " +  '"' + ftp_ncbi + '"') else ""} \
      ~{true="--skip-blat" false="" skip_blat} \
      ~{true="--enlarge-genes" false="" enlarge_genes} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(skip_database) then ("--skip-database " +  '"' + skip_database + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(hash) then ("--hash " +  '"' + hash + '"') else ""} \
      ~{true="--keep" false="" keep} \
      ~{if defined(checksums) then ("--checksums " +  '"' + checksums + '"') else ""}
  >>>
  parameter_meta {
    output_directory_files: "The output directory where all the outputs files  and directories will be written."
    organism: "Organism for which the data is downloaded from Ensembl database and built, for example: 'homo_sapiens', 'mus_musculus', 'rattus_norvegicus', 'canis_familiaris', etc. Default is 'homo_sapiens'."
    config: "Configuration file containing the paths to external tools (e.g. Bowtie, etc.) in case that they are not in PATH! Default is '/tmp/tmpr7lyfvkf/bin/../etc/configur ation.cfg,/tmp/tmpr7lyfvkf/bin/configuration.cfg'."
    force_paths: "If it is specified then all external tools and all Python tools will be executed by FusionCatcher by using their corresponding absolute paths, which will be obined from the fusioncatcher/bin/configuration.cfg file. By default no paths are specified when executing tools/scripts. Default is 'False'."
    web: "Ensembl database web site from where the data is downloaded.  e.g. 'www.ensembl.org', 'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is 'www.ensembl.org'."
    ftp_ensembl: "Ensembl database FTP site from where the data is downloaded. Default is 'ftp.ensembl.org'."
    ftp_ensembl_path: "The path for Ensembl database FTP site from where the data is downloaded."
    ftp_ucsc: "UCSC database FTP site from where the data is downloaded. Default is 'hgdownload.cse.ucsc.edu'."
    ftp_ncbi: "NCBI database FTP site from where the data is downloaded. Default is 'ftp.ncbi.nlm.nih.gov'."
    skip_blat: "If it is set then the pipeline will NOT use the BLAT aligner and all options and methods which make use of BLAT will be disabled. BLAT aligner is used by default. Please, note that BLAT license does not allow BLAT to be used for commercial activities. Fore more information regarding BLAT please see its license: <http://users.soe.ucsc.edu/~kent/src/>. Default is 'False'."
    enlarge_genes: "If it is set then the genes are enlarged (i.e. their introns include also in the transcriptome). Default is 'False'."
    threads: "Number or processes/threads to be used. Default is '0'."
    skip_database: "If it is set then the pipeline will skip the specified database(s). The choices are ['cosmic','conjoing','chi merdb2','chimerdb3','ticdb','cgp','cacg']. If several databases should be skipped, then their names shall be separated by comma. Default is ''."
    start: "It starts executing the workflow from the given step number. This can be used when the pipeline has crashed/stopped and one wants to re-run it from from the step where it stopped without re-running from the beginning the entire pipeline. 0 is for restarting automatically and 1 is the first step. This is intended to be used for debugging. Default is '0'."
    hash: "Hash to be used for computing checksum. The choices are ['no','crc32','md5','adler32','sha512','sha256']. If it is set up to 'no' then no checksum is used and the entire pipeline is executed as a normal shell script. For more information see 'hash_library' in 'workflow.py'. This is intended to be used for debugging. Default is 'no'."
    keep: "Preserve intermediate files produced during the run. By default, they are NOT deleted upon exit. This is intended to be used for debugging. Default value is 'False'."
    checksums: "The name of the checksums file. This is intended to be used for debugging. Default value is 'checksums.txt'."
    arg: ""
  }
}