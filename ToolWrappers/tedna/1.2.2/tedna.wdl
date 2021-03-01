version 1.0

task Tedna {
  input {
    Boolean? file_one
    Boolean? file_two
    Boolean? insert
    Boolean? km_er
    File? output_file
    Boolean? threshold
    Boolean? min_te_size
    Boolean? max_te_size
    Boolean? processors
    Boolean? repeat_frequency
    Boolean? min_frequency
    Boolean? frequency_dif
    Boolean? small_graph
    Boolean? big_graph
    Boolean? small_graph_count
    Boolean? max_paths
    Boolean? erosion
    Boolean? bubble_size
    Boolean? min_ltr
    Boolean? max_ltr
    Boolean? duplicate_id
    Boolean? min_overlap
    Boolean? max_overlap
    Boolean? short_km_er
    Boolean? in_del_pen
    Boolean? mismatch_pen
    Boolean? size_pen
    Boolean? max_pen
    Boolean? min_id
    Boolean? merge_max_nb
    Boolean? min_scaffold
    Boolean? max_scaffold
    Boolean? scaffold_max_nb
    Boolean? bytes_per_thread
    Boolean? max_reads
    String all_dot
  }
  command <<<
    tedna \
      ~{all_dot} \
      ~{if (file_one) then "--file1" else ""} \
      ~{if (file_two) then "--file2" else ""} \
      ~{if (insert) then "--insert" else ""} \
      ~{if (km_er) then "--kmer" else ""} \
      ~{if (output_file) then "--output" else ""} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (min_te_size) then "--min-te-size" else ""} \
      ~{if (max_te_size) then "--max-te-size" else ""} \
      ~{if (processors) then "--processors" else ""} \
      ~{if (repeat_frequency) then "--repeat-frequency" else ""} \
      ~{if (min_frequency) then "--min-frequency" else ""} \
      ~{if (frequency_dif) then "--frequency-dif" else ""} \
      ~{if (small_graph) then "--small-graph" else ""} \
      ~{if (big_graph) then "--big-graph" else ""} \
      ~{if (small_graph_count) then "--small-graph-count" else ""} \
      ~{if (max_paths) then "--max-paths" else ""} \
      ~{if (erosion) then "--erosion" else ""} \
      ~{if (bubble_size) then "--bubble-size" else ""} \
      ~{if (min_ltr) then "--min-ltr" else ""} \
      ~{if (max_ltr) then "--max-ltr" else ""} \
      ~{if (duplicate_id) then "--duplicate-id" else ""} \
      ~{if (min_overlap) then "--min-overlap" else ""} \
      ~{if (max_overlap) then "--max-overlap" else ""} \
      ~{if (short_km_er) then "--short-kmer" else ""} \
      ~{if (in_del_pen) then "--indel-pen" else ""} \
      ~{if (mismatch_pen) then "--mismatch-pen" else ""} \
      ~{if (size_pen) then "--size-pen" else ""} \
      ~{if (max_pen) then "--max-pen" else ""} \
      ~{if (min_id) then "--min-id" else ""} \
      ~{if (merge_max_nb) then "--merge-max-nb" else ""} \
      ~{if (min_scaffold) then "--min-scaffold" else ""} \
      ~{if (max_scaffold) then "--max-scaffold" else ""} \
      ~{if (scaffold_max_nb) then "--scaffold-max-nb" else ""} \
      ~{if (bytes_per_thread) then "--bytes-per-thread" else ""} \
      ~{if (max_reads) then "--max-reads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_one: "First FASTQ file."
    file_two: "Second FASTQ file."
    insert: "Insert size."
    km_er: "K-mer size."
    output_file: "Output file."
    threshold: "K-mer frequency threshold   (default: ad hoc)."
    min_te_size: "Minimum TE size             (default: 500)."
    max_te_size: "Maximum TE size             (default: 30000)."
    processors: "Number of processors        (default: 2)."
    repeat_frequency: "Minimum number of repetitions      (default: 2)."
    min_frequency: "Minimum k-mer frequency            (default: 3)."
    frequency_dif: "Maximum k-mer frequency difference (default: 2.5)."
    small_graph: "Minimum graph size                 (default: 300)."
    big_graph: "Maximum graph size                 (default: 100000)."
    small_graph_count: "Stop after N small graphs          (default: 10000), 0:\\nnever stop."
    max_paths: "Maximum # paths                    (default: 100), 0:\\nnever stop."
    erosion: "Erosion strength                   (default: 100)."
    bubble_size: "Size of the bubbles                (default: 1000)."
    min_ltr: "Minimum LTR size                   (default: 50)."
    max_ltr: "Maximum LTR size                   (default: 5000)."
    duplicate_id: "Maximum id. to remove duplicate    (default: 30%)."
    min_overlap: "Minimum overlap to merge TEs       (default: 20)."
    max_overlap: "Maximum overlap to merge TEs       (default: 500)."
    short_km_er: "Small k-mer size                   (default: 15)."
    in_del_pen: "Indel penalty                      (default: 30)."
    mismatch_pen: "Mismatch penalty                   (default: 10)."
    size_pen: "Size penalty                       (default: 1)."
    max_pen: "Maximum penalty                    (default: 200)."
    min_id: "Minimum identity                   (default: 80)."
    merge_max_nb: "Maximum number of neighbor/node    (default: 10), 0: do\\nnot use."
    min_scaffold: "Minimum number of evidences/scaff. (default: 100)."
    max_scaffold: "Maximum number of evidences/scaff. (default: 10000)."
    scaffold_max_nb: "Maximum number of neighbor/node    (default: 5), 0: do\\nnot use."
    bytes_per_thread: "Number of bytes read per thread    (default: 10000000)."
    max_reads: "Maximum number of reads read       (default: 0), 0: read"
    all_dot: "--check              Check if a sequence is assembled   (default: none)."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}