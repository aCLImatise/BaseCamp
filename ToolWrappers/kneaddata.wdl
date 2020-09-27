version 1.0

task Kneaddata {
  input {
    Boolean? verbose
    File? input_fastq_file
    Directory? directory_write_files
    String? reference_db
    Boolean? bypass_trim
    String? output_prefix
    Int? threads
    Int? processes
    String? quality_scores
    Boolean? run_bm_tagger
    Boolean? run_trf
    Boolean? run_fast_qc_start
    Boolean? run_fast_qc_end
    Boolean? store_temp_output
    Boolean? remove_intermediate_output
    Boolean? cat_final_output
    String? log_level
    File? log
    File? trim_mo_matic
    Int? max_memory
    Int? trim_mo_matic_options
    Int? bowtie_two
    Int? bowtie_two_options
    Boolean? no_discordant
    Boolean? reorder
    Boolean? serial
    File? bm_tagger
    File? trf
    Int? match
    Int? mismatch
    Int? delta
    Int? pm
    Int? pi
    Int? min_score
    Int? max_period
    File? fast_qc
  }
  command <<<
    kneaddata \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(input_fastq_file) then ("--input " +  '"' + input_fastq_file + '"') else ""} \
      ~{if defined(directory_write_files) then ("--output " +  '"' + directory_write_files + '"') else ""} \
      ~{if defined(reference_db) then ("--reference-db " +  '"' + reference_db + '"') else ""} \
      ~{if (bypass_trim) then "--bypass-trim" else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(quality_scores) then ("--quality-scores " +  '"' + quality_scores + '"') else ""} \
      ~{if (run_bm_tagger) then "--run-bmtagger" else ""} \
      ~{if (run_trf) then "--run-trf" else ""} \
      ~{if (run_fast_qc_start) then "--run-fastqc-start" else ""} \
      ~{if (run_fast_qc_end) then "--run-fastqc-end" else ""} \
      ~{if (store_temp_output) then "--store-temp-output" else ""} \
      ~{if (remove_intermediate_output) then "--remove-intermediate-output" else ""} \
      ~{if (cat_final_output) then "--cat-final-output" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(trim_mo_matic) then ("--trimmomatic " +  '"' + trim_mo_matic + '"') else ""} \
      ~{if defined(max_memory) then ("--max-memory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(trim_mo_matic_options) then ("--trimmomatic-options " +  '"' + trim_mo_matic_options + '"') else ""} \
      ~{if defined(bowtie_two) then ("--bowtie2 " +  '"' + bowtie_two + '"') else ""} \
      ~{if defined(bowtie_two_options) then ("--bowtie2-options " +  '"' + bowtie_two_options + '"') else ""} \
      ~{if (no_discordant) then "--no-discordant" else ""} \
      ~{if (reorder) then "--reorder" else ""} \
      ~{if (serial) then "--serial" else ""} \
      ~{if defined(bm_tagger) then ("--bmtagger " +  '"' + bm_tagger + '"') else ""} \
      ~{if defined(trf) then ("--trf " +  '"' + trf + '"') else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{if defined(pm) then ("--pm " +  '"' + pm + '"') else ""} \
      ~{if defined(pi) then ("--pi " +  '"' + pi + '"') else ""} \
      ~{if defined(min_score) then ("--minscore " +  '"' + min_score + '"') else ""} \
      ~{if defined(max_period) then ("--maxperiod " +  '"' + max_period + '"') else ""} \
      ~{if defined(fast_qc) then ("--fastqc " +  '"' + fast_qc + '"') else ""}
  >>>
  parameter_meta {
    verbose: "additional output is printed"
    input_fastq_file: "input FASTQ file (add a second argument instance to run with paired input files)"
    directory_write_files: "directory to write output files"
    reference_db: "location of reference database (additional arguments add databases)"
    bypass_trim: "bypass the trim step"
    output_prefix: "prefix for all output files\\n[ DEFAULT : $SAMPLE_kneaddata ]"
    threads: "number of threads\\n[ Default : 1 ]"
    processes: "number of processes\\n[ Default : 1 ]"
    quality_scores: "quality scores\\n[ DEFAULT : phred33 ]"
    run_bm_tagger: "run BMTagger instead of Bowtie2 to identify contaminant reads"
    run_trf: "run TRF to remove tandem repeats"
    run_fast_qc_start: "run fastqc at the beginning of the workflow"
    run_fast_qc_end: "run fastqc at the end of the workflow"
    store_temp_output: "store temp output files\\n[ DEFAULT : temp output files are removed ]"
    remove_intermediate_output: "remove intermediate output files\\n[ DEFAULT : intermediate output files are stored ]"
    cat_final_output: "concatenate all final output files\\n[ DEFAULT : final output is not concatenated ]"
    log_level: "level of log messages\\n[ DEFAULT : DEBUG ]"
    log: "log file\\n[ DEFAULT : $OUTPUT_DIR/$SAMPLE_kneaddata.log ]"
    trim_mo_matic: "path to trimmomatic\\n[ DEFAULT : $PATH ]"
    max_memory: "max amount of memory\\n[ DEFAULT : 500m ]"
    trim_mo_matic_options: "options for trimmomatic\\n[ DEFAULT : ILLUMINACLIP:/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:50 ]\\nMINLEN is set to 50 percent of total input read length"
    bowtie_two: "path to bowtie2\\n[ DEFAULT : $PATH ]"
    bowtie_two_options: "options for bowtie2\\n[ DEFAULT : --very-sensitive ]"
    no_discordant: "do not include discordant alignments for pairs (ie one of the two pairs aligns)\\n[ DEFAULT : Discordant alignments are included ]"
    reorder: "order the sequences in the same order as the input\\n[ DEFAULT : With discordant paired alignments sequences are not ordered ]"
    serial: "filter the input in serial for multiple databases so a subset of reads are processed in each database search"
    bm_tagger: "path to BMTagger\\n[ DEFAULT : $PATH ]"
    trf: "path to TRF\\n[ DEFAULT : $PATH ]"
    match: "matching weight\\n[ DEFAULT : 2 ]"
    mismatch: "mismatching penalty\\n[ DEFAULT : 7 ]"
    delta: "indel penalty\\n[ DEFAULT : 7 ]"
    pm: "match probability\\n[ DEFAULT : 80 ]"
    pi: "indel probability\\n[ DEFAULT : 10 ]"
    min_score: "minimum alignment score to report\\n[ DEFAULT : 50 ]"
    max_period: "maximum period size to report\\n[ DEFAULT : 500 ]"
    fast_qc: "path to fastqc\\n[ DEFAULT : $PATH ]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_write_files = "${in_directory_write_files}"
  }
}