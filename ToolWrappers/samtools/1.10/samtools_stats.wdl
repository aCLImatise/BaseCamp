version 1.0

task SamtoolsStats {
  input {
    Int? coverage
    Boolean? remove_dups
    Boolean? customized_index_file
    Boolean? required_flag
    Int? filtering_flag
    Float? gc_depth
    Int? insert_size
    String? id
    Int? read_length
    Float? most_inserts
    File? split_prefix
    Int? trim_quality
    File? ref_seq
    Boolean? sam
    String? split
    File? target_regions
    Boolean? sparse
    Boolean? remove_overlaps
    Int? cov_threshold
    File? input_fmt_option
    File? reference
    Int? threads
    Int? verbosity
    File file_dot_bam
  }
  command <<<
    samtools stats \
      ~{file_dot_bam} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if (remove_dups) then "--remove-dups" else ""} \
      ~{if (customized_index_file) then "--customized-index-file" else ""} \
      ~{if (required_flag) then "--required-flag" else ""} \
      ~{if defined(filtering_flag) then ("--filtering-flag " +  '"' + filtering_flag + '"') else ""} \
      ~{if defined(gc_depth) then ("--GC-depth " +  '"' + gc_depth + '"') else ""} \
      ~{if defined(insert_size) then ("--insert-size " +  '"' + insert_size + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(most_inserts) then ("--most-inserts " +  '"' + most_inserts + '"') else ""} \
      ~{if defined(split_prefix) then ("--split-prefix " +  '"' + split_prefix + '"') else ""} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{if defined(ref_seq) then ("--ref-seq " +  '"' + ref_seq + '"') else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(target_regions) then ("--target-regions " +  '"' + target_regions + '"') else ""} \
      ~{if (sparse) then "--sparse" else ""} \
      ~{if (remove_overlaps) then "--remove-overlaps" else ""} \
      ~{if defined(cov_threshold) then ("--cov-threshold " +  '"' + cov_threshold + '"') else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    coverage: ",<int>,<int>    Coverage distribution min,max,step [1,1000,1]"
    remove_dups: "Exclude from statistics reads marked as duplicates"
    customized_index_file: "Use a customized index file"
    required_flag: "<str|int>      Required flag, 0 for unset. See also `samtools flags` [0]"
    filtering_flag: "Filtering flag, 0 for unset. See also `samtools flags` [0]"
    gc_depth: "the size of GC-depth bins (decreasing bin size increases memory requirement) [2e4]"
    insert_size: "Maximum insert size [8000]"
    id: "Include only listed read group or sample name"
    read_length: "Include in the statistics only reads with the given read length [-1]"
    most_inserts: "Report only the main part of inserts [0.99]"
    split_prefix: "Path or string prefix for filepaths output by -S (default is input filename)"
    trim_quality: "The BWA trimming parameter [0]"
    ref_seq: "Reference sequence (required for GC-depth and mismatches-per-cycle calculation)."
    sam: "Ignored (input format is auto-detected)."
    split: "Also write statistics to separate files split by tagged field."
    target_regions: "Do stats in these regions only. Tab-delimited file chr,from,to, 1-based, inclusive."
    sparse: "Suppress outputting IS rows where there are no insertions."
    remove_overlaps: "Remove overlaps of paired-end reads from coverage and base count computations."
    cov_threshold: "Only bases with coverage above this value will be included in the target percentage computation [0]"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    verbosity: "Set level of verbosity\\n"
    file_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}