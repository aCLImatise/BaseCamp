version 1.0

task Kneaddata {
  input {
    Boolean? verbose
    String? input_fastq_file
    String? directory_write_files
    String? reference_db
    Boolean? bypass_trim
    String? output_prefix
    String? threads
    String? processes
    String? quality_scores
    Boolean? run_bm_tagger
    Boolean? run_trf
    Boolean? run_fast_qc_start
    Boolean? run_fast_qc_end
    Boolean? store_temp_output
    Boolean? remove_intermediate_output
    Boolean? cat_final_output
    String? log_level
    String? log
    String? trim_mo_matic
    Int? max_memory
    String? trim_mo_matic_options
    String? bowtie_two
    String? bowtie_two_options
    Boolean? no_discordant
    Boolean? reorder
    Boolean? serial
    String? bm_tagger
    String? trf
    String? match
    String? mismatch
    String? delta
    String? pm
    String? pi
    Int? min_score
    Int? max_period
    String? fast_qc
  }
  command <<<
    kneaddata \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(input_fastq_file) then ("--input " +  '"' + input_fastq_file + '"') else ""} \
      ~{if defined(directory_write_files) then ("--output " +  '"' + directory_write_files + '"') else ""} \
      ~{if defined(reference_db) then ("--reference-db " +  '"' + reference_db + '"') else ""} \
      ~{true="--bypass-trim" false="" bypass_trim} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(quality_scores) then ("--quality-scores " +  '"' + quality_scores + '"') else ""} \
      ~{true="--run-bmtagger" false="" run_bm_tagger} \
      ~{true="--run-trf" false="" run_trf} \
      ~{true="--run-fastqc-start" false="" run_fast_qc_start} \
      ~{true="--run-fastqc-end" false="" run_fast_qc_end} \
      ~{true="--store-temp-output" false="" store_temp_output} \
      ~{true="--remove-intermediate-output" false="" remove_intermediate_output} \
      ~{true="--cat-final-output" false="" cat_final_output} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(trim_mo_matic) then ("--trimmomatic " +  '"' + trim_mo_matic + '"') else ""} \
      ~{if defined(max_memory) then ("--max-memory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(trim_mo_matic_options) then ("--trimmomatic-options " +  '"' + trim_mo_matic_options + '"') else ""} \
      ~{if defined(bowtie_two) then ("--bowtie2 " +  '"' + bowtie_two + '"') else ""} \
      ~{if defined(bowtie_two_options) then ("--bowtie2-options " +  '"' + bowtie_two_options + '"') else ""} \
      ~{true="--no-discordant" false="" no_discordant} \
      ~{true="--reorder" false="" reorder} \
      ~{true="--serial" false="" serial} \
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
    output_prefix: "prefix for all output files [ DEFAULT : $SAMPLE_kneaddata ]"
    threads: "number of threads [ Default : 1 ]"
    processes: "number of processes [ Default : 1 ]"
    quality_scores: "quality scores [ DEFAULT : phred33 ]"
    run_bm_tagger: "run BMTagger instead of Bowtie2 to identify contaminant reads"
    run_trf: "run TRF to remove tandem repeats"
    run_fast_qc_start: "run fastqc at the beginning of the workflow"
    run_fast_qc_end: "run fastqc at the end of the workflow"
    store_temp_output: "store temp output files [ DEFAULT : temp output files are removed ]"
    remove_intermediate_output: "remove intermediate output files [ DEFAULT : intermediate output files are stored ]"
    cat_final_output: "concatenate all final output files [ DEFAULT : final output is not concatenated ]"
    log_level: "level of log messages [ DEFAULT : DEBUG ]"
    log: "log file [ DEFAULT : $OUTPUT_DIR/$SAMPLE_kneaddata.log ]"
    trim_mo_matic: "path to trimmomatic [ DEFAULT : $PATH ]"
    max_memory: "max amount of memory [ DEFAULT : 500m ]"
    trim_mo_matic_options: "options for trimmomatic [ DEFAULT : ILLUMINACLIP:/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:50 ] MINLEN is set to 50 percent of total input read length"
    bowtie_two: "path to bowtie2 [ DEFAULT : $PATH ]"
    bowtie_two_options: "options for bowtie2 [ DEFAULT : --very-sensitive ]"
    no_discordant: "do not include discordant alignments for pairs (ie one of the two pairs aligns) [ DEFAULT : Discordant alignments are included ]"
    reorder: "order the sequences in the same order as the input [ DEFAULT : With discordant paired alignments sequences are not ordered ]"
    serial: "filter the input in serial for multiple databases so a subset of reads are processed in each database search"
    bm_tagger: "path to BMTagger [ DEFAULT : $PATH ]"
    trf: "path to TRF [ DEFAULT : $PATH ]"
    match: "matching weight [ DEFAULT : 2 ]"
    mismatch: "mismatching penalty [ DEFAULT : 7 ]"
    delta: "indel penalty [ DEFAULT : 7 ]"
    pm: "match probability [ DEFAULT : 80 ]"
    pi: "indel probability [ DEFAULT : 10 ]"
    min_score: "minimum alignment score to report [ DEFAULT : 50 ]"
    max_period: "maximum period size to report [ DEFAULT : 500 ]"
    fast_qc: "path to fastqc [ DEFAULT : $PATH ]"
  }
}