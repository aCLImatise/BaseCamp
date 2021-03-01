version 1.0

task ChiraMappy {
  input {
    Boolean? aligner
    Boolean? query_fast_a
    File? outdir
    Boolean? index_one
    Boolean? index_two
    Boolean? ref_fast_a_one
    Boolean? ref_fast_a_two
    Boolean? build
    Boolean? processes
    Boolean? stranded
    Boolean? seed_length_one
    Boolean? seed_length_two
    Boolean? align_score_one
    Boolean? align_score_two
    Boolean? match_one
    Boolean? mismatch_one
    Boolean? match_two
    Boolean? mismatch_two
    Boolean? gap_open_one
    Boolean? gap_ext_one
    Boolean? gap_open_two
    Boolean? gap_ext_two
    Boolean? n_hits_one
    Boolean? nh_its_two
    Boolean? chimeric_overlap
  }
  command <<<
    chira_map_py \
      ~{if (aligner) then "--aligner" else ""} \
      ~{if (query_fast_a) then "--query_fasta" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (index_one) then "--index1" else ""} \
      ~{if (index_two) then "--index2" else ""} \
      ~{if (ref_fast_a_one) then "--ref_fasta1" else ""} \
      ~{if (ref_fast_a_two) then "--ref_fasta2" else ""} \
      ~{if (build) then "--build" else ""} \
      ~{if (processes) then "--processes" else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if (seed_length_one) then "--seed_length1" else ""} \
      ~{if (seed_length_two) then "--seed_length2" else ""} \
      ~{if (align_score_one) then "--align_score1" else ""} \
      ~{if (align_score_two) then "--align_score2" else ""} \
      ~{if (match_one) then "--match1" else ""} \
      ~{if (mismatch_one) then "--mismatch1" else ""} \
      ~{if (match_two) then "--match2" else ""} \
      ~{if (mismatch_two) then "--mismatch2" else ""} \
      ~{if (gap_open_one) then "--gapopen1" else ""} \
      ~{if (gap_ext_one) then "--gapext1" else ""} \
      ~{if (gap_open_two) then "--gapopen2" else ""} \
      ~{if (gap_ext_two) then "--gapext2" else ""} \
      ~{if (n_hits_one) then "--nhits1" else ""} \
      ~{if (nh_its_two) then "--nhits2" else ""} \
      ~{if (chimeric_overlap) then "--chimeric_overlap" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    aligner: "Alignment program to use, bwa or clan (default: bwa)"
    query_fast_a: "Path to query fasta file (default: None)"
    outdir: "Output directory path for the analysis (default: None)"
    index_one: "first prioroty index file (default: None)"
    index_two: "second priority index file (default: None)"
    ref_fast_a_one: "First prioroty fasta file (default: None)"
    ref_fast_a_two: "second priority fasta file (default: None)"
    build: "Build indices from reference fasta files (default:\\nFalse)"
    processes: "Number of processes to use (default: 1)"
    stranded: "Strand-specificity of input samples. fw = map to\\ntranscript strand; rc = map to reverse compliment of\\ntranscript strand; both = try to map on both strnads\\n(default: fw)"
    seed_length_one: "Seed length for 1st mapping iteration. bwa-mem\\nparameter \\\"-k\\\" (default: 12)"
    seed_length_two: "Seed length for 2nd mapping iteration. bwa-mem\\nparameter \\\"-k\\\" (default: 16)"
    align_score_one: "Minimum alignment score in 1st mapping iteration. bwa-\\nmem parameter \\\"-T\\\" and clan_search parameter \\\"-l\\\"\\n(default: 18)"
    align_score_two: "Minimum alignment score in 2nd mapping iteration. It\\nmust be smaller than --align_score1 parameter. bwa-mem\\nparameter \\\"-T\\\" and clan_search parameter \\\"-l\\\"\\n(default: 16)"
    match_one: "Matching score for 1st mapping iteration. (default: 1)"
    mismatch_one: "Mismatch penalty for 1st mapping iteration. (default:\\n4)"
    match_two: "Matching score for 2nd mapping iteration. (default: 1)"
    mismatch_two: "Mismatch penalty for 2nd mapping iteration. (default:\\n6)"
    gap_open_one: "Gap opening penalty for 1st mapping iteration.\\n(default: 6)"
    gap_ext_one: "Gap extension penalty for 1st mapping iteration.\\n(default: 1)"
    gap_open_two: "Gap opening penalty for 2nd mapping iteration.\\n(default: 100)"
    gap_ext_two: "Gap extension penalty for 2nd mapping iteration.\\n(default: 100)"
    n_hits_one: "Number of allowed multi hits per read (default: 50)"
    nh_its_two: "Number of allowed multi hits per read in 2nd iteration\\n(default: 100)"
    chimeric_overlap: "Maximum number of bases allowed between the chimeric\\nsegments of a read (default: 2)"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}