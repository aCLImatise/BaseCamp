version 1.0

task OutriggerPsi {
  input {
    Directory? index
    Directory? name_is_specify
    File? junction_reads_csv
    File? sjouttab_files_star
    Boolean? bam_files_use
    Int? min_reads
    Int? method
    Int? uneven_coverage_multiplier
    Boolean? ignore_multi_mapping
    String? reads_col
    String? sample_id_col
    String? junction_id_col
    Boolean? debug
    Int? n_jobs
    Boolean? low_memory
  }
  command <<<
    outrigger psi \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(name_is_specify) then ("--output " +  '"' + name_is_specify + '"') else ""} \
      ~{if defined(junction_reads_csv) then ("--junction-reads-csv " +  '"' + junction_reads_csv + '"') else ""} \
      ~{if (sjouttab_files_star) then "-j" else ""} \
      ~{if (bam_files_use) then "-b" else ""} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(uneven_coverage_multiplier) then ("--uneven-coverage-multiplier " +  '"' + uneven_coverage_multiplier + '"') else ""} \
      ~{if (ignore_multi_mapping) then "--ignore-multimapping" else ""} \
      ~{if defined(reads_col) then ("--reads-col " +  '"' + reads_col + '"') else ""} \
      ~{if defined(sample_id_col) then ("--sample-id-col " +  '"' + sample_id_col + '"') else ""} \
      ~{if defined(junction_id_col) then ("--junction-id-col " +  '"' + junction_id_col + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(n_jobs) then ("--n-jobs " +  '"' + n_jobs + '"') else ""} \
      ~{if (low_memory) then "--low-memory" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index: "Name of the folder where you saved the output from\\n\\\"outrigger index\\\" (default is\\n./outrigger_output/index, which is relative to the\\ndirectory where you called this program, assuming you\\nhave called \\\"outrigger psi\\\" in the same folder as you\\ncalled \\\"outrigger index\\\")"
    name_is_specify: "Name of the folder where you saved the output from\\n\\\"outrigger index\\\" (default is ./outrigger_output,\\nwhich is relative to the directory where you called\\nthe program). Cannot specify both an --index and\\n--output with \\\"psi\\\""
    junction_reads_csv: "Name of the compiled splice junction file to calculate\\npsi scores on. Default is the '--output' folder's\\njunctions/reads.csv file. Not required if you specify\\nSJ.out.tab files with '--sj-out-tab'"
    sjouttab_files_star: "[SJ_OUT_TAB [SJ_OUT_TAB ...]], --sj-out-tab [SJ_OUT_TAB [SJ_OUT_TAB ...]]\\nSJ.out.tab files from STAR aligner output. Not\\nrequired if you specify a file with \\\"--compiled-\\njunction-reads\\\""
    bam_files_use: "[BAM [BAM ...]], --bam [BAM [BAM ...]]\\nBam files to use to calculate psi on"
    min_reads: "Minimum number of reads per junction for calculating\\nPsi (default=10)"
    method: "How to deal with multiple junctions on an event - take\\nthe mean (default) or the min? (the other option)"
    uneven_coverage_multiplier: "If a junction one one side of an exon is bigger than\\nthe other side of the exon by this amount, (default is\\n10, so 10x bigger), then do not use this event"
    ignore_multi_mapping: "Applies to STAR SJ.out.tab files only. If this flag is\\nused, then do not include reads that mapped to\\nmultiple locations in the genome, not uniquely to a\\nlocus, in the read count for a junction. If inputting\\n\\\"bam\\\" files, then this means that reads with a mapping\\nquality (MAPQ) of less than 255 are considered\\n\\\"multimapped.\\\" This is the same thing as what the STAR\\naligner does. By default, this is off, and all reads\\nare used."
    reads_col: "Name of column in --splice-junction-csv containing\\nreads to use. (default='reads')"
    sample_id_col: "Name of column in --splice-junction-csv containing\\nsample ids to use. (default='sample_id')"
    junction_id_col: "Name of column in --splice-junction-csv containing the\\nID of the junction to use. Must match exactly with the\\njunctions in the index.(default='junction_id')"
    debug: "If given, print debugging logging information to\\nstandard out"
    n_jobs: "Number of threads to use when parallelizing psi\\ncalculation and file reading. Default is -1, which\\nmeans to use as many threads as are available."
    low_memory: "If set, then use a smaller memory footprint. By\\ndefault, this is off.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_index = "${in_index}"
    Directory out_name_is_specify = "${in_name_is_specify}"
    File out_junction_reads_csv = "${in_junction_reads_csv}"
    File out_sjouttab_files_star = "${in_sjouttab_files_star}"
  }
}