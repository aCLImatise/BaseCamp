version 1.0

task PreprocesspyIllumina {
  input {
    Array[File] input_r_one
    Boolean? already_contig_ed
    Int? min_amplicon_size
    Int? max_amplicon_size
    Boolean? without_primers
    File? input_archive
    String? merge_software
    Boolean? keep_un_merged
    Int? expected_amplicon_size
    Int? five_prim_primer
    Int? three_prim_primer
    Int? r_one_size
    Int? r_two_size
    Float? mismatch_rate
    String? quality_scale
    Int? nb_cpus
    Boolean? debug
    Array[String] samples_names
    Array[Int] input_r_two
    Int? output_de_replicated
    File? output_count
    File? summary
    File? log_file
    String for
    String samples
    String archive
    String files
  }
  command <<<
    preprocess_py illumina \
      ~{for} \
      ~{samples} \
      ~{archive} \
      ~{files} \
      ~{if defined(input_r_one) then ("--input-R1 " +  '"' + input_r_one + '"') else ""} \
      ~{if (already_contig_ed) then "--already-contiged" else ""} \
      ~{if defined(min_amplicon_size) then ("--min-amplicon-size " +  '"' + min_amplicon_size + '"') else ""} \
      ~{if defined(max_amplicon_size) then ("--max-amplicon-size " +  '"' + max_amplicon_size + '"') else ""} \
      ~{if (without_primers) then "--without-primers" else ""} \
      ~{if defined(input_archive) then ("--input-archive " +  '"' + input_archive + '"') else ""} \
      ~{if defined(merge_software) then ("--merge-software " +  '"' + merge_software + '"') else ""} \
      ~{if (keep_un_merged) then "--keep-unmerged" else ""} \
      ~{if defined(expected_amplicon_size) then ("--expected-amplicon-size " +  '"' + expected_amplicon_size + '"') else ""} \
      ~{if defined(five_prim_primer) then ("--five-prim-primer " +  '"' + five_prim_primer + '"') else ""} \
      ~{if defined(three_prim_primer) then ("--three-prim-primer " +  '"' + three_prim_primer + '"') else ""} \
      ~{if defined(r_one_size) then ("--R1-size " +  '"' + r_one_size + '"') else ""} \
      ~{if defined(r_two_size) then ("--R2-size " +  '"' + r_two_size + '"') else ""} \
      ~{if defined(mismatch_rate) then ("--mismatch-rate " +  '"' + mismatch_rate + '"') else ""} \
      ~{if defined(quality_scale) then ("--quality-scale " +  '"' + quality_scale + '"') else ""} \
      ~{if defined(nb_cpus) then ("--nb-cpus " +  '"' + nb_cpus + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(samples_names) then ("--samples-names " +  '"' + samples_names + '"') else ""} \
      ~{if defined(input_r_two) then ("--input-R2 " +  '"' + input_r_two + '"') else ""} \
      ~{if defined(output_de_replicated) then ("--output-dereplicated " +  '"' + output_de_replicated + '"') else ""} \
      ~{if defined(output_count) then ("--output-count " +  '"' + output_count + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    input_r_one: ""
    already_contig_ed: "| --input-R2 R2_FILE [R2_FILE ...] --R1-size R1_SIZE --R2-size R2_SIZE [--mismatch-rate RATE ] [--quality-scale SCALE ] [--merge-software {vsearch,flash,pear} [--expected-amplicon-size]] [--keep-unmerged]"
    min_amplicon_size: ""
    max_amplicon_size: ""
    without_primers: "| --five-prim-primer FIVE_PRIM_PRIMER --three-prim-primer THREE_PRIM_PRIMER"
    input_archive: ""
    merge_software: "Software used to merge paired reads"
    keep_un_merged: "In case of uncontiged paired reads, keep unmerged, and\\nartificially combined them with 100 Ns."
    expected_amplicon_size: "The expected size for the majority of the amplicons\\n(with primers), if using Flash as read pair merge\\nsoftware."
    five_prim_primer: "The 5' primer sequence (wildcards are accepted)."
    three_prim_primer: "The 3' primer sequence (wildcards are accepted)."
    r_one_size: "The read1 size."
    r_two_size: "The read2 size."
    mismatch_rate: "Maxi mismatch rate in overlap region. [Default: 0.1]"
    quality_scale: "The phred base quality scale, either 33 or 64 if using\\nVsearch as read pair merge software [Default: 33]"
    nb_cpus: "The maximum number of CPUs used. [Default: 1]"
    debug: "Keep temporary files to debug program."
    samples_names: "The sample name for each R1/R2-files."
    input_r_two: "The R2 sequence file for each sample (format: fastq)."
    output_de_replicated: "Fasta file with unique sequences. Each sequence has an\\nID ended with the number of initial sequences\\nrepresented (example : \\\">a0101;size=10\\\"). [Default:\\ndereplication.fasta]"
    output_count: "TSV file with count by sample for each unique sequence\\n(example with 3 samples : \\\"a0101<TAB>5<TAB>8<TAB>0\\\").\\n[Default: count.tsv]"
    summary: "HTML file with summary of filters results. [Default:\\nsummary.html]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
    for: ""
    samples: ""
    archive: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}