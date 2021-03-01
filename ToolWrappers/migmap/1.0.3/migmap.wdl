version 1.0

task Migmap {
  input {
    Boolean? all_alleles
    Boolean? allow_incomplete
    Boolean? allow_no_cdr_three
    Boolean? allow_noncoding
    File? blast_dir
    Boolean? by_read
    File? custom_database
    File? data_dir
    Boolean? details
    Int? number_reads_take
    Int? number_available_processors
    Int? threshold_average_quality
    Boolean? chain_receptor_gene
    File? report
    String? species_allowed_humanmouse
    Boolean? unmapped
    String mapping_dot
    File file_dot
  }
  command <<<
    migmap \
      ~{mapping_dot} \
      ~{file_dot} \
      ~{if (all_alleles) then "--all-alleles" else ""} \
      ~{if (allow_incomplete) then "--allow-incomplete" else ""} \
      ~{if (allow_no_cdr_three) then "--allow-no-cdr3" else ""} \
      ~{if (allow_noncoding) then "--allow-noncoding" else ""} \
      ~{if defined(blast_dir) then ("--blast-dir " +  '"' + blast_dir + '"') else ""} \
      ~{if (by_read) then "--by-read" else ""} \
      ~{if defined(custom_database) then ("--custom-database " +  '"' + custom_database + '"') else ""} \
      ~{if defined(data_dir) then ("--data-dir " +  '"' + data_dir + '"') else ""} \
      ~{if (details) then "--details" else ""} \
      ~{if defined(number_reads_take) then ("-n " +  '"' + number_reads_take + '"') else ""} \
      ~{if defined(number_available_processors) then ("-p " +  '"' + number_available_processors + '"') else ""} \
      ~{if defined(threshold_average_quality) then ("-q " +  '"' + threshold_average_quality + '"') else ""} \
      ~{if (chain_receptor_gene) then "-R" else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(species_allowed_humanmouse) then ("-S " +  '"' + species_allowed_humanmouse + '"') else ""} \
      ~{if (unmapped) then "--unmapped" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all_alleles: "Will use all alleles during\\nalignment (this is going to be\\nslower). [default = use only major\\n(*01) alleles]"
    allow_incomplete: "Report clonotypes with partial\\nCDR3 mapping."
    allow_no_cdr_three: "Report clonotypes with no CDR3"
    allow_noncoding: "Report clonotypes that have either\\nstop codon or frameshift in their\\nreceptor sequence."
    blast_dir: "Path to folder that contains\\n'igblastn' and 'makeblastdb'\\nbinaries. [default = assume they\\nare added to $PATH and execute\\nthem directly]"
    by_read: "Will output mapping details for\\neach read. [default = assemble\\nclonotypes and output clonotype\\nabundance table]"
    custom_database: "Path to a custom segments\\ndatabase. [default = use built-in\\ndatabase]"
    data_dir: "Path to folder that contains data\\nbundle (internal_data/ and\\noptional_file/ directories).\\n[default = $install_dir/data/]"
    details: "<field1,field2,.../all>   Additional fields to provide for\\noutput, allowed values:\\nfr1nt,cdr1nt,fr2nt,cdr2nt,fr3nt,fr\\n4nt,contignt,fr1aa,cdr1aa,fr2aa,cd\\nr2aa,fr3aa,fr4aa,contigaa."
    number_reads_take: "Number of reads to take. [default\\n= all]"
    number_available_processors: "Number of cores to use. [default =\\nall available processors]"
    threshold_average_quality: "Threshold for average quality of\\nmutations and N-regions of CDR3\\n[default = 25]"
    chain_receptor_gene: "<chain1,...>                        Receptor gene and chain. Several\\nchains can be specified, separated\\nwith commas. Allowed values: [TRA,\\nTRB, TRG, TRD, IGH, IGL, IGK].\\n[required]"
    report: "File to store MIGMAP report. Will\\nappend report line if file exists."
    species_allowed_humanmouse: "Species. Allowed values: [human,\\nmouse, rat, rabbit,\\nrhesus_monkey]. [required]"
    unmapped: "<fastq[.gz]>             Output unmapped reads in specified"
    mapping_dot: "--allow-noncanonical                Report clonotypes that have"
    file_dot: "--use-kabat                         Will use KABAT nomenclature for"
  }
  output {
    File out_stdout = stdout()
  }
}