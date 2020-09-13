version 1.0

task CreateMegaReads {
  input {
    Int? size
    Int? mer
    Int? fine_mer
    Int? psa_min
    File? unit_igs_lengths
    File? unit_igs_sequences
    Int? k_mer
    Int? threads
    File? output_file_stdout
    File? dot
    Int? stretch_constant
    Float? stretch_factor
    Float? stretch_cap
    Int? window_size
    Int? overlap_play
    Int? errors
    Float? bases_matching
    Float? mers_matching
    Boolean? max_match
    Int? max_count
    Boolean? bases
    Float? density
    Int? min_length
    String? tiling
    String? trim
    File? super_reads
    File? pac_bio
    String create_mega_reads_cmdline
  }
  command <<<
    create_mega_reads \
      ~{create_mega_reads_cmdline} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(mer) then ("--mer " +  '"' + mer + '"') else ""} \
      ~{if defined(fine_mer) then ("--fine-mer " +  '"' + fine_mer + '"') else ""} \
      ~{if defined(psa_min) then ("--psa-min " +  '"' + psa_min + '"') else ""} \
      ~{if defined(unit_igs_lengths) then ("--unitigs-lengths " +  '"' + unit_igs_lengths + '"') else ""} \
      ~{if defined(unit_igs_sequences) then ("--unitigs-sequences " +  '"' + unit_igs_sequences + '"') else ""} \
      ~{if defined(k_mer) then ("--k-mer " +  '"' + k_mer + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_file_stdout) then ("--output " +  '"' + output_file_stdout + '"') else ""} \
      ~{if defined(dot) then ("--dot " +  '"' + dot + '"') else ""} \
      ~{if defined(stretch_constant) then ("--stretch-constant " +  '"' + stretch_constant + '"') else ""} \
      ~{if defined(stretch_factor) then ("--stretch-factor " +  '"' + stretch_factor + '"') else ""} \
      ~{if defined(stretch_cap) then ("--stretch-cap " +  '"' + stretch_cap + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(overlap_play) then ("--overlap-play " +  '"' + overlap_play + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{if defined(bases_matching) then ("--bases-matching " +  '"' + bases_matching + '"') else ""} \
      ~{if defined(mers_matching) then ("--mers-matching " +  '"' + mers_matching + '"') else ""} \
      ~{if (max_match) then "--max-match" else ""} \
      ~{if defined(max_count) then ("--max-count " +  '"' + max_count + '"') else ""} \
      ~{if (bases) then "--bases" else ""} \
      ~{if defined(density) then ("--density " +  '"' + density + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(tiling) then ("--tiling " +  '"' + tiling + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(super_reads) then ("--superreads " +  '"' + super_reads + '"') else ""} \
      ~{if defined(pac_bio) then ("--pacbio " +  '"' + pac_bio + '"') else ""}
  >>>
  parameter_meta {
    size: "*Number of k-mers in SuperReads"
    mer: "*Mer size"
    fine_mer: "Mer size for fine alignment"
    psa_min: "Min suffix length in SA. Increase for speed up at the cost of memory (13)"
    unit_igs_lengths: "Length of k-unitigs"
    unit_igs_sequences: "Fasta file containing the sequence of the k-unitigs"
    k_mer: "*Length of k-mer used to create k-unitigs"
    threads: "Number of threads (1)"
    output_file_stdout: "Output file (stdout)"
    dot: "Write an overlap graph (dot file)"
    stretch_constant: "Constant tolerated stretch between sequences (10)"
    stretch_factor: "Factor tolerated stretch between sequences (1.3)"
    stretch_cap: "Maximum distance between two consecutive k-mers in LIS (10000.0)"
    window_size: "Check stretch on every window of k-mer this size (1)"
    overlap_play: "Play in overlap length between position and k-unitig lengths (1.3)"
    errors: "Number of average errors slack for overlap computation (3.0)"
    bases_matching: "Filter base on percent of bases matching (17.0)"
    mers_matching: "Filter base on percent of k-mer matching (0.0)"
    max_match: "Use secondary matches (false)"
    max_count: "Maximum mer count in super read to be used for alignment (5000)"
    bases: "Maximize number of bases in path, not the number of mers (false)"
    density: "Minimum density of k-mers in mega-read (0.029)"
    min_length: "Minimum length of a mega-read (100.0)"
    tiling: "|greedy|maximal|weighted\\nOption for tiling mega-reads (greedy)"
    trim: "|match|branch             How to trim mega-read (none)"
    super_reads: "SuperReads sequence file"
    pac_bio: "PacBio read sequence file"
    create_mega_reads_cmdline: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_stdout = "${in_output_file_stdout}"
  }
}