version 1.0

task Assemble {
  input {
    Int? km_er_length_slash_k
    Boolean? double_stranded_mode
    Boolean? fr_strand
    Boolean? paired_end
    Int? min_seed_coverage
    Float? min_seed_entropy
    Int? min_km_er_coverage
    Float? min_km_er_entropy
    Int? min_junction_coverage
    Float? min_ratio_non_error
    Boolean? pair_gap_length
    String? out_dir_slash_o
    Boolean? help_slash_h
    Boolean? reads_slash_km_ers
    File filename
    String? opts
  }
  command <<<
    Assemble \
      ~{filename} \
      ~{opts} \
      ~{if defined(km_er_length_slash_k) then ("--kmer_length/-k " +  '"' + km_er_length_slash_k + '"') else ""} \
      ~{true="--double_stranded_mode" false="" double_stranded_mode} \
      ~{true="--fr_strand" false="" fr_strand} \
      ~{true="--paired_end" false="" paired_end} \
      ~{if defined(min_seed_coverage) then ("--min_seed_coverage " +  '"' + min_seed_coverage + '"') else ""} \
      ~{if defined(min_seed_entropy) then ("--min_seed_entropy " +  '"' + min_seed_entropy + '"') else ""} \
      ~{if defined(min_km_er_coverage) then ("--min_kmer_coverage " +  '"' + min_km_er_coverage + '"') else ""} \
      ~{if defined(min_km_er_entropy) then ("--min_kmer_entropy " +  '"' + min_km_er_entropy + '"') else ""} \
      ~{if defined(min_junction_coverage) then ("--min_junction_coverage " +  '"' + min_junction_coverage + '"') else ""} \
      ~{if defined(min_ratio_non_error) then ("--min_ratio_non_error " +  '"' + min_ratio_non_error + '"') else ""} \
      ~{true="--pair_gap_length" false="" pair_gap_length} \
      ~{if defined(out_dir_slash_o) then ("--out_dir/-o " +  '"' + out_dir_slash_o + '"') else ""} \
      ~{true="--help/-h" false="" help_slash_h} \
      ~{true="--reads/--kmers" false="" reads_slash_km_ers}
  >>>
  parameter_meta {
    km_er_length_slash_k: ": length of kmer, default: 25."
    double_stranded_mode: ": set it true if double stranded mode."
    fr_strand: "<int>              : strand specific protocol, default: 1  ( 1 : fr-firststrand, e.g. dUTP, NSR, NNSR  2 : fr-secondstrand, e.g. Strandard SOLID ) "
    paired_end: ": set it true if paired reads."
    min_seed_coverage: ": minimum coverage of seed kmer, default: 2."
    min_seed_entropy: ": minimum entropy of seed kmer, default: 1.5"
    min_km_er_coverage: ": minimum coverage of kmer used to extend, default: 1."
    min_km_er_entropy: ": minimum entroy of kmer used to extend, default: 0.0"
    min_junction_coverage: ": minimum of the coverage of a junction, default: 2."
    min_ratio_non_error: ": min ratio for low/high alternative extension that is  not an error, default: 0.05."
    pair_gap_length: ": gap length of paired reads, default: 200."
    out_dir_slash_o: ": name of directory for output, default : ./RawGraphs "
    help_slash_h: ": display the help information."
    reads_slash_km_ers: ""
    filename: ""
    opts: ""
  }
}