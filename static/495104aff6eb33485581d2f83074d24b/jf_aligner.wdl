version 1.0

task JfAligner {
  input {
    Int? size
    Int? mer
    Int? fine_mer
    Int? psa_min
    Int? threads
    Int? stretch_constant
    Float? stretch_factor
    Float? stretch_cap
    Int? window_size
    Boolean? forward
    Float? bases_matching
    Float? mers_matching
    File? details
    File? coords
    Boolean? max_match
    Boolean? no_header
    Boolean? zero_match
    Int? max_count
    File? unit_igs_lengths
    File? unit_igs_sequences
    Boolean? compact
    Int? k_mer
    File? super_reads
    File? pac_bio
    String jf_aligner_cmdline
  }
  command <<<
    jf_aligner \
      ~{jf_aligner_cmdline} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(mer) then ("--mer " +  '"' + mer + '"') else ""} \
      ~{if defined(fine_mer) then ("--fine-mer " +  '"' + fine_mer + '"') else ""} \
      ~{if defined(psa_min) then ("--psa-min " +  '"' + psa_min + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(stretch_constant) then ("--stretch-constant " +  '"' + stretch_constant + '"') else ""} \
      ~{if defined(stretch_factor) then ("--stretch-factor " +  '"' + stretch_factor + '"') else ""} \
      ~{if defined(stretch_cap) then ("--stretch-cap " +  '"' + stretch_cap + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if (forward) then "--forward" else ""} \
      ~{if defined(bases_matching) then ("--bases-matching " +  '"' + bases_matching + '"') else ""} \
      ~{if defined(mers_matching) then ("--mers-matching " +  '"' + mers_matching + '"') else ""} \
      ~{if defined(details) then ("--details " +  '"' + details + '"') else ""} \
      ~{if defined(coords) then ("--coords " +  '"' + coords + '"') else ""} \
      ~{if (max_match) then "--max-match" else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if (zero_match) then "--zero-match" else ""} \
      ~{if defined(max_count) then ("--max-count " +  '"' + max_count + '"') else ""} \
      ~{if defined(unit_igs_lengths) then ("--unitigs-lengths " +  '"' + unit_igs_lengths + '"') else ""} \
      ~{if defined(unit_igs_sequences) then ("--unitigs-sequences " +  '"' + unit_igs_sequences + '"') else ""} \
      ~{if (compact) then "--compact" else ""} \
      ~{if defined(k_mer) then ("--k-mer " +  '"' + k_mer + '"') else ""} \
      ~{if defined(super_reads) then ("--superreads " +  '"' + super_reads + '"') else ""} \
      ~{if defined(pac_bio) then ("--pacbio " +  '"' + pac_bio + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    size: "*Number of k-mers in SuperReads"
    mer: "*Mer size"
    fine_mer: "Mer size for fine alignment"
    psa_min: "Min suffix length in SA. Increase for speed up at the cost of memory (13)"
    threads: "Number of threads (1)"
    stretch_constant: "Constant tolerated stretch between matching k-mer in LIS (10)"
    stretch_factor: "Factor tolerated stretch between matching k-mer in LIS (1.3)"
    stretch_cap: "Maximum distance between two consecutive k-mers in LIS (10000.0)"
    window_size: "Check stretch on every window of k-mer this size (1)"
    forward: "Show all matches forward (reverse super read name if needed) (false)"
    bases_matching: "Filter base on percent of bases matching (17.0)"
    mers_matching: "Filter base on percent of k-mer matching (0.0)"
    details: "Output files with detail k-mer information"
    coords: "Output files with math coordinate information (stdout)"
    max_match: "Output secondary matches (false)"
    no_header: "Do not output header (false)"
    zero_match: "Output header even if query has no match (false)"
    max_count: "Maximum mer count in super read to be used for alignment (5000)"
    unit_igs_lengths: "Length of k-unitigs"
    unit_igs_sequences: "Fasta file containing the sequence of the k-unitigs"
    compact: "Compact output format (true)"
    k_mer: "Length of k-mer used to create k-unitigs"
    super_reads: "SuperReads sequence file"
    pac_bio: "PacBio read sequence file"
    jf_aligner_cmdline: ""
  }
  output {
    File out_stdout = stdout()
  }
}