version 1.0

task Duplomapprepare {
  input {
    File? csv_file_segmental
    File? reference
    File? annotate
    Directory? output_directory
    Directory? force
    Int? anchor
    Int? area
    Int? length
    Float? seq_similarity
    Int? minimap_km_er
    Int? window_size
    Int? min_windows
    Float? window_similarity
    Int? comp_dist
    Int? skip_copy_num
    String? log
    Boolean? human
  }
  command <<<
    duplomap_prepare \
      ~{if defined(csv_file_segmental) then ("--input " +  '"' + csv_file_segmental + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(annotate) then ("--annotate " +  '"' + annotate + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(anchor) then ("--anchor " +  '"' + anchor + '"') else ""} \
      ~{if defined(area) then ("--area " +  '"' + area + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(seq_similarity) then ("--seq-similarity " +  '"' + seq_similarity + '"') else ""} \
      ~{if defined(minimap_km_er) then ("--minimap-kmer " +  '"' + minimap_km_er + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(min_windows) then ("--min-windows " +  '"' + min_windows + '"') else ""} \
      ~{if defined(window_similarity) then ("--window-similarity " +  '"' + window_similarity + '"') else ""} \
      ~{if defined(comp_dist) then ("--comp-dist " +  '"' + comp_dist + '"') else ""} \
      ~{if defined(skip_copy_num) then ("--skip-copy-num " +  '"' + skip_copy_num + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (human) then "--human" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/duplomap:0.9.5--hed695b0_0"
  }
  parameter_meta {
    csv_file_segmental: "Csv file with segmental duplications"
    reference: "Reference genome in the indexed fasta format"
    annotate: "Optional: gene annotation in the GFF format, used for database annotation"
    output_directory: "Output directory"
    force: "Force work with non-empty output directory"
    anchor: "Anchor size [default: 6]"
    area: "Anchor should be unique in the area with radius INT [default: 20]"
    length: "Discard duplication pairs if at least one of the sequences is shorter than INT\\n[default: 5000]"
    seq_similarity: "Discard duplication pairs with sequence similarity (fracMatch) less that FLOAT\\n[default: 0.97]"
    minimap_km_er: "Minimap2 k-mer size [default: 15]"
    window_size: "Window size used for the identification of diverse regions [default: 100]"
    min_windows: "Number of consecutive windows necessary to mark a region as similar or diverse\\n[default: 3]"
    window_similarity: "Window similarity threshold (diverse regions have similarity lower than FLOAT)\\n[default: 95.0]"
    comp_dist: "Distance between components containing segmental duplications [default: 500]"
    skip_copy_num: "<INT>    Do not analyze regions with copy number higher or equal than INT[1]. If region\\nlength is less than INT[2], PSVs in the region are not constructed.\\n[default 6 3000]"
    log: "Logging level in log files (stderr shows logs with info level and higher)\\n[default: debug]  [possible values: trace, debug, info, warning, error, critical,\\nnone]"
    human: "Human readable database (currently cannot be loaded)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    Directory out_force = "${in_force}"
  }
}