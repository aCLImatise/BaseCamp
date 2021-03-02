version 1.0

task OutriggerIndex {
  input {
    File? name_folder_saved
    Boolean? sjouttab_files_star
    File? junction_reads_csv
    Boolean? location_bam_use
    Int? min_reads
    Boolean? ignore_multi_mapping
    Int? max_de_novo_exon_length
    File? gtf_filename
    File? gff_utils_db
    Boolean? debug
    Int? n_jobs
    Boolean? low_memory
    String? splice_types
    Boolean? force
    Boolean? resume
  }
  command <<<
    outrigger index \
      ~{if defined(name_folder_saved) then ("--output " +  '"' + name_folder_saved + '"') else ""} \
      ~{if (sjouttab_files_star) then "-j" else ""} \
      ~{if defined(junction_reads_csv) then ("--junction-reads-csv " +  '"' + junction_reads_csv + '"') else ""} \
      ~{if (location_bam_use) then "-b" else ""} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if (ignore_multi_mapping) then "--ignore-multimapping" else ""} \
      ~{if defined(max_de_novo_exon_length) then ("--max-de-novo-exon-length " +  '"' + max_de_novo_exon_length + '"') else ""} \
      ~{if defined(gtf_filename) then ("--gtf-filename " +  '"' + gtf_filename + '"') else ""} \
      ~{if defined(gff_utils_db) then ("--gffutils-db " +  '"' + gff_utils_db + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(n_jobs) then ("--n-jobs " +  '"' + n_jobs + '"') else ""} \
      ~{if (low_memory) then "--low-memory" else ""} \
      ~{if defined(splice_types) then ("--splice-types " +  '"' + splice_types + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (resume) then "--resume" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_folder_saved: "Name of the folder where you saved the output from\\n\\\"outrigger index\\\" (default is ./outrigger_output,\\nwhich is relative to the directory where you called\\nthe program)\\\". You will need this file for the next\\nstep, \\\"outrigger psi\\\""
    sjouttab_files_star: "[SJ_OUT_TAB [SJ_OUT_TAB ...]], --sj-out-tab [SJ_OUT_TAB [SJ_OUT_TAB ...]]\\nSJ.out.tab files from STAR aligner output. Not\\nrequired if you specify \\\"--compiled-junction-reads\\\""
    junction_reads_csv: "Name of the splice junction files to detect novel\\nexons and build an index of alternative splicing\\nevents from. Not required if you specify SJ.out.tab\\nfile with '--sj-out-tab'"
    location_bam_use: "[BAM [BAM ...]], --bam [BAM [BAM ...]]\\nLocation of bam files to use for finding events."
    min_reads: "Minimum number of reads per junction for that junction\\nto count in creating the index of splicing events\\n(default=10)"
    ignore_multi_mapping: "Applies to STAR SJ.out.tab files only. If this flag is\\nused, then do not include reads that mapped to\\nmultiple locations in the genome, not uniquely to a\\nlocus, in the read count for a junction. If inputting\\n\\\"bam\\\" files, then this means that reads with a mapping\\nquality (MAPQ) of less than 255 are considered\\n\\\"multimapped.\\\" This is the same thing as what the STAR\\naligner does. By default, this is off, and all reads\\nare used."
    max_de_novo_exon_length: "Maximum length of an exon detected *de novo* from the\\ndataset. This is to prevent multiple kilobase long\\nexons from being accidentally created. (default=100)"
    gtf_filename: "Name of the gtf file you want to use. If a gffutils\\nfeature database doesn't already exist at this\\nlocation plus '.db' (e.g. if your gtf is\\ngencode.v19.annotation.gtf, then the database is\\ninferred to be gencode.v19.annotation.gtf.db), then a\\ndatabase will be auto-created. Not required if you\\nprovide a pre-built database with '--gffutils-db'"
    gff_utils_db: "Name of the gffutils database file you want to use.\\nThe exon IDs defined here will be used in the function\\nwhen creating splicing event names. Not required if\\nyou provide a gtf file with '--gtf-filename'"
    debug: "If given, print debugging logging information to\\nstandard out (Warning: LOTS of output. Not recommended\\nunless you think something is going wrong)"
    n_jobs: "Number of threads to use when parallelizing exon\\nfinding and file reading. Default is -1, which means\\nto use as many threads as are available."
    low_memory: "If set, then use a smaller memory footprint. By\\ndefault, this is off."
    splice_types: "Which splice types to find. By default, \\\"all\\\" are used\\nwhich at this point is skipped exon (SE) and mutually\\nexclusive exon (MXE) events. Can also specify only\\none, e.g. \\\"se\\\" or both \\\"se,mxe\\\""
    force: "If the 'outrigger index' command was interrupted,\\nthere will be intermediate files remaining. If you\\nwish to restart outrigger and overwrite them all, use\\nthis flag. If you want to continue from where you left\\noff, use the '--resume' flag. If neither is specified,\\nthe program exits and complains to the user."
    resume: "If the 'outrigger index' command was interrupted,\\nthere will be intermediate files remaining. If you\\nwant to continue from where you left off, use this\\nflag. The default action is to do nothing and ask the\\nuser for input.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_folder_saved = "${in_name_folder_saved}"
    File out_junction_reads_csv = "${in_junction_reads_csv}"
  }
}