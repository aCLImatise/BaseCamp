version 1.0

task LongestPath {
  input {
    Int? threads
    File? output_file
    File? dot
    Int? overlap_play
    Int? errors
    Boolean? bases
    File? unit_igs_lengths
    File? unit_igs_sequences
    Int? k_mer
    Float? density
    Int? min_length
    String? tiling
    String? trim
    Int longest_path_overlap_graph_two_cmdline
    String coords
  }
  command <<<
    longest_path \
      ~{longest_path_overlap_graph_two_cmdline} \
      ~{coords} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(dot) then ("--dot " +  '"' + dot + '"') else ""} \
      ~{if defined(overlap_play) then ("--overlap-play " +  '"' + overlap_play + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{if (bases) then "--bases" else ""} \
      ~{if defined(unit_igs_lengths) then ("--unitigs-lengths " +  '"' + unit_igs_lengths + '"') else ""} \
      ~{if defined(unit_igs_sequences) then ("--unitigs-sequences " +  '"' + unit_igs_sequences + '"') else ""} \
      ~{if defined(k_mer) then ("--k-mer " +  '"' + k_mer + '"') else ""} \
      ~{if defined(density) then ("--density " +  '"' + density + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(tiling) then ("--tiling " +  '"' + tiling + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "Number of threads (1)"
    output_file: "Output file"
    dot: "Write an overlap graph (dot file)"
    overlap_play: "Play in overlap length between position and k-unitig lengths (1.3)"
    errors: "Number of average errors slack for overlap computation (3.0)"
    bases: "Maximize number of bases in path, not the number of mers (false)"
    unit_igs_lengths: "Length of k-unitigs"
    unit_igs_sequences: "Fasta file containing the sequence of the k-unitigs"
    k_mer: "*Length of k-mer used to create k-unitigs"
    density: "Minimum density of k-mers (0.029)"
    min_length: "Minimum length of a mega-read (100.0)"
    tiling: "|greedy|maximal         Option for tiling mega-reads (greedy)"
    trim: "|match|branch             How to trim mega-read (none)"
    longest_path_overlap_graph_two_cmdline: ""
    coords: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}