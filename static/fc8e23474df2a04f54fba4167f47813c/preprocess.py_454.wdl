version 1.0

task Preprocesspy54 {
  input {
    File? input_archive
    Int? min_amplicon_size
    Int? max_amplicon_size
    Int? five_prim_primer
    Int? three_prim_primer
    Int? nb_cpus
    Boolean? debug
    Array[String] samples_names
    Array[Int] input_r_one
    Int? output_de_replicated
    File? output_count
    File? summary
    File? log_file
  }
  command <<<
    preprocess_py _54 \
      ~{if defined(input_archive) then ("--input-archive " +  '"' + input_archive + '"') else ""} \
      ~{if defined(min_amplicon_size) then ("--min-amplicon-size " +  '"' + min_amplicon_size + '"') else ""} \
      ~{if defined(max_amplicon_size) then ("--max-amplicon-size " +  '"' + max_amplicon_size + '"') else ""} \
      ~{if defined(five_prim_primer) then ("--five-prim-primer " +  '"' + five_prim_primer + '"') else ""} \
      ~{if defined(three_prim_primer) then ("--three-prim-primer " +  '"' + three_prim_primer + '"') else ""} \
      ~{if defined(nb_cpus) then ("--nb-cpus " +  '"' + nb_cpus + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(samples_names) then ("--samples-names " +  '"' + samples_names + '"') else ""} \
      ~{if defined(input_r_one) then ("--input-R1 " +  '"' + input_r_one + '"') else ""} \
      ~{if defined(output_de_replicated) then ("--output-dereplicated " +  '"' + output_de_replicated + '"') else ""} \
      ~{if defined(output_count) then ("--output-count " +  '"' + output_count + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    input_archive: "| --input-R1 R1_FILE [R1_FILE ...]\\n--min-amplicon-size MIN_AMPLICON_SIZE\\n--max-amplicon-size MAX_AMPLICON_SIZE\\n--five-prim-primer FIVE_PRIM_PRIMER\\n--three-prim-primer THREE_PRIM_PRIMER\\n[--fungi {ITS1,ITS2}]\\n[-p NB_CPUS] [--debug] [-v]\\n[-d DEREPLICATED_FILE] [-c COUNT_FILE]\\n[-s SUMMARY_FILE] [-l LOG_FILE]"
    min_amplicon_size: "The minimum size for the amplicons (with primers)."
    max_amplicon_size: "The maximum size for the amplicons (with primers)."
    five_prim_primer: "The 5' primer sequence (wildcards are accepted)."
    three_prim_primer: "The 3' primer sequence (wildcards are accepted)."
    nb_cpus: "The maximum number of CPUs used. [Default: 1]"
    debug: "Keep temporary files to debug program."
    samples_names: "The sample name for each R1/R2-files."
    input_r_one: "The sequence file for each sample (format: fastq)."
    output_de_replicated: "Fasta file with unique sequences. Each sequence has an\\nID ended with the number of initial sequences\\nrepresented (example : \\\">a0101;size=10\\\"). [Default:\\ndereplication.fasta]"
    output_count: "TSV file with count by sample for each unique sequence\\n(example with 3 samples : \\\"a0101<TAB>5<TAB>8<TAB>0\\\").\\n[Default: count.tsv]"
    summary: "HTML file with summary of filters results. [Default:\\nsummary.html]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}