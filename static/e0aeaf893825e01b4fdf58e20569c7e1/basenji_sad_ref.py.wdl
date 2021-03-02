version 1.0

task BasenjiSadRefpy {
  input {
    Float? require_clustered_snps
    Int? genome_fasta_sequences
    Boolean? flip
    File? normalize_sad_scores
    Directory? output_directory_plots
    Int? number_processes_passed
    Int? pseudo
    Boolean? rc
    Int? shifts
    String? stats
    File? file_specifying_indexes
    Boolean? compute_sed_penultimate
    String format
    String tracks
  }
  command <<<
    basenji_sad_ref_py \
      ~{format} \
      ~{tracks} \
      ~{if defined(require_clustered_snps) then ("-c " +  '"' + require_clustered_snps + '"') else ""} \
      ~{if defined(genome_fasta_sequences) then ("-f " +  '"' + genome_fasta_sequences + '"') else ""} \
      ~{if (flip) then "--flip" else ""} \
      ~{if defined(normalize_sad_scores) then ("-n " +  '"' + normalize_sad_scores + '"') else ""} \
      ~{if defined(output_directory_plots) then ("-o " +  '"' + output_directory_plots + '"') else ""} \
      ~{if defined(number_processes_passed) then ("-p " +  '"' + number_processes_passed + '"') else ""} \
      ~{if defined(pseudo) then ("--pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (rc) then "--rc" else ""} \
      ~{if defined(shifts) then ("--shifts " +  '"' + shifts + '"') else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if defined(file_specifying_indexes) then ("-t " +  '"' + file_specifying_indexes + '"') else ""} \
      ~{if (compute_sed_penultimate) then "-u" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    require_clustered_snps: "Require clustered SNPs lie in center region [Default:\\n0.25]"
    genome_fasta_sequences: "Genome FASTA for sequences [Default:\\n/usr/local/share/basenji//data/hg19.fa]"
    flip: "Flip reference/alternate alleles when simple [Default:\\nFalse]"
    normalize_sad_scores: "Normalize SAD scores"
    output_directory_plots: "Output directory for tables and plots [Default: sad]"
    number_processes_passed: "Number of processes, passed by multi script"
    pseudo: "Log2 pseudocount [Default: 1]"
    rc: "Average forward and reverse complement predictions\\n[Default: False]"
    shifts: "Ensemble prediction shifts [Default: 0]"
    stats: "Comma-separated list of stats to save. [Default: SAD]"
    file_specifying_indexes: "File specifying target indexes and labels in table"
    compute_sed_penultimate: "Compute SED in the penultimate layer [Default: False]"
    format: "--ti=TRACK_INDEXES   Comma-separated list of target indexes to output BigWig"
    tracks: "--threads            Run CPU math and output in a separate thread [Default:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_plots = "${in_output_directory_plots}"
  }
}