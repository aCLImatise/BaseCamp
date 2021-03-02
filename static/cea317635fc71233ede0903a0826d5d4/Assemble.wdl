version 1.0

task Assemble {
  input {
    File? reads
    Int? km_er_length
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
    Directory? out_dir
  }
  command <<<
    Assemble \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(km_er_length) then ("--kmer_length " +  '"' + km_er_length + '"') else ""} \
      ~{if (double_stranded_mode) then "--double_stranded_mode" else ""} \
      ~{if (fr_strand) then "--fr_strand" else ""} \
      ~{if (paired_end) then "--paired_end" else ""} \
      ~{if defined(min_seed_coverage) then ("--min_seed_coverage " +  '"' + min_seed_coverage + '"') else ""} \
      ~{if defined(min_seed_entropy) then ("--min_seed_entropy " +  '"' + min_seed_entropy + '"') else ""} \
      ~{if defined(min_km_er_coverage) then ("--min_kmer_coverage " +  '"' + min_km_er_coverage + '"') else ""} \
      ~{if defined(min_km_er_entropy) then ("--min_kmer_entropy " +  '"' + min_km_er_entropy + '"') else ""} \
      ~{if defined(min_junction_coverage) then ("--min_junction_coverage " +  '"' + min_junction_coverage + '"') else ""} \
      ~{if defined(min_ratio_non_error) then ("--min_ratio_non_error " +  '"' + min_ratio_non_error + '"') else ""} \
      ~{if (pair_gap_length) then "--pair_gap_length" else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reads: ": the name of the file containing reads"
    km_er_length: ": length of kmer, default: 25."
    double_stranded_mode: ": set it true if double stranded mode."
    fr_strand: "<int>              : strand specific protocol, default: 1\\n( 1 : fr-firststrand, e.g. dUTP, NSR, NNSR\\n2 : fr-secondstrand, e.g. Strandard SOLID )"
    paired_end: ": set it true if paired reads."
    min_seed_coverage: ": minimum coverage of seed kmer, default: 2."
    min_seed_entropy: ": minimum entropy of seed kmer, default: 1.5"
    min_km_er_coverage: ": minimum coverage of kmer used to extend, default: 1."
    min_km_er_entropy: ": minimum entroy of kmer used to extend, default: 0.0"
    min_junction_coverage: ": minimum of the coverage of a junction, default: 2."
    min_ratio_non_error: ": min ratio for low/high alternative extension that is\\nnot an error, default: 0.05."
    pair_gap_length: ": gap length of paired reads, default: 200."
    out_dir: ": name of directory for output, default : ./RawGraphs"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}