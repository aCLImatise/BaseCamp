version 1.0

task ChiraMappy {
  input {
    Boolean? _aligner_alignment
    Boolean? _queryfasta_path
    File? _outdir_output
    Boolean? x_one
    Boolean? x_two
    Boolean? fone
    Boolean? f_two
    Boolean? build
    Boolean? _processes_number
    Boolean? _stranded_strandspecificity
    Boolean? lone
    Boolean? l_two
    Boolean? s_one
    Boolean? s_two
    Boolean? ma_one
    Boolean? mm_one
    Boolean? ma_two
    Boolean? mm_two
    Boolean? go_one
    Boolean? ge_one
    Boolean? go_two
    Boolean? ge_two
    Boolean? hone
    Boolean? h_two
    Boolean? co
  }
  command <<<
    chira_map_py \
      ~{if (_aligner_alignment) then "-a" else ""} \
      ~{if (_queryfasta_path) then "-i" else ""} \
      ~{if (_outdir_output) then "-o" else ""} \
      ~{if (x_one) then "-x1" else ""} \
      ~{if (x_two) then "-x2" else ""} \
      ~{if (fone) then "-f1" else ""} \
      ~{if (f_two) then "-f2" else ""} \
      ~{if (build) then "--build" else ""} \
      ~{if (_processes_number) then "-p" else ""} \
      ~{if (_stranded_strandspecificity) then "-s" else ""} \
      ~{if (lone) then "-l1" else ""} \
      ~{if (l_two) then "-l2" else ""} \
      ~{if (s_one) then "-s1" else ""} \
      ~{if (s_two) then "-s2" else ""} \
      ~{if (ma_one) then "-ma1" else ""} \
      ~{if (mm_one) then "-mm1" else ""} \
      ~{if (ma_two) then "-ma2" else ""} \
      ~{if (mm_two) then "-mm2" else ""} \
      ~{if (go_one) then "-go1" else ""} \
      ~{if (ge_one) then "-ge1" else ""} \
      ~{if (go_two) then "-go2" else ""} \
      ~{if (ge_two) then "-ge2" else ""} \
      ~{if (hone) then "-h1" else ""} \
      ~{if (h_two) then "-h2" else ""} \
      ~{if (co) then "-co" else ""}
  >>>
  parameter_meta {
    _aligner_alignment: ", --aligner        Alignment program to use, bwa or clan (default: bwa)"
    _queryfasta_path: ", --query_fasta    Path to query fasta file (default: None)"
    _outdir_output: ", --outdir         Output directory path for the analysis (default: None)"
    x_one: ", --index1        first prioroty index file (default: None)"
    x_two: ", --index2        second priority index file (default: None)"
    fone: ", --ref_fasta1    First prioroty fasta file (default: None)"
    f_two: ", --ref_fasta2    second priority fasta file (default: None)"
    build: "Build indices from reference fasta files (default:\\nFalse)"
    _processes_number: ", --processes      Number of processes to use (default: 1)"
    _stranded_strandspecificity: ", --stranded       Strand-specificity of input samples. fw = map to\\ntranscript strand; rc = map to reverse compliment of\\ntranscript strand; both = try to map on both strnads\\n(default: fw)"
    lone: ", --seed_length1\\nSeed length for 1st mapping iteration. bwa-mem\\nparameter \\\"-k\\\" (default: 12)"
    l_two: ", --seed_length2\\nSeed length for 2nd mapping iteration. bwa-mem\\nparameter \\\"-k\\\" (default: 16)"
    s_one: ", --align_score1\\nMinimum alignment score in 1st mapping iteration. bwa-\\nmem parameter \\\"-T\\\" and clan_search parameter \\\"-l\\\"\\n(default: 18)"
    s_two: ", --align_score2\\nMinimum alignment score in 2nd mapping iteration. It\\nmust be smaller than --align_score1 parameter. bwa-mem\\nparameter \\\"-T\\\" and clan_search parameter \\\"-l\\\"\\n(default: 16)"
    ma_one: ", --match1       Matching score for 1st mapping iteration. (default: 1)"
    mm_one: ", --mismatch1    Mismatch penalty for 1st mapping iteration. (default:\\n4)"
    ma_two: ", --match2       Matching score for 2nd mapping iteration. (default: 1)"
    mm_two: ", --mismatch2    Mismatch penalty for 2nd mapping iteration. (default:\\n6)"
    go_one: ", --gapopen1     Gap opening penalty for 1st mapping iteration.\\n(default: 6)"
    ge_one: ", --gapext1      Gap extension penalty for 1st mapping iteration.\\n(default: 1)"
    go_two: ", --gapopen2     Gap opening penalty for 2nd mapping iteration.\\n(default: 100)"
    ge_two: ", --gapext2      Gap extension penalty for 2nd mapping iteration.\\n(default: 100)"
    hone: ", --nhits1        Number of allowed multi hits per read (default: 50)"
    h_two: ", --nhits2        Number of allowed multi hits per read in 2nd iteration\\n(default: 100)"
    co: ", --chimeric_overlap\\nMaximum number of bases allowed between the chimeric\\nsegments of a read (default: 2)"
  }
  output {
    File out_stdout = stdout()
    File out__outdir_output = "${in__outdir_output}"
  }
}