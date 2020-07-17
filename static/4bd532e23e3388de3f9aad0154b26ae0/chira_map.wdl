version 1.0

task ChiraMap.py {
  input {
    Boolean? _aligner_alignment
    Boolean? _queryfasta_path
    Boolean? _outdir_path
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
    chira_map.py \
      ~{true="-a" false="" _aligner_alignment} \
      ~{true="-i" false="" _queryfasta_path} \
      ~{true="-o" false="" _outdir_path} \
      ~{true="-x1" false="" x_one} \
      ~{true="-x2" false="" x_two} \
      ~{true="-f1" false="" fone} \
      ~{true="-f2" false="" f_two} \
      ~{true="--build" false="" build} \
      ~{true="-p" false="" _processes_number} \
      ~{true="-s" false="" _stranded_strandspecificity} \
      ~{true="-l1" false="" lone} \
      ~{true="-l2" false="" l_two} \
      ~{true="-s1" false="" s_one} \
      ~{true="-s2" false="" s_two} \
      ~{true="-ma1" false="" ma_one} \
      ~{true="-mm1" false="" mm_one} \
      ~{true="-ma2" false="" ma_two} \
      ~{true="-mm2" false="" mm_two} \
      ~{true="-go1" false="" go_one} \
      ~{true="-ge1" false="" ge_one} \
      ~{true="-go2" false="" go_two} \
      ~{true="-ge2" false="" ge_two} \
      ~{true="-h1" false="" hone} \
      ~{true="-h2" false="" h_two} \
      ~{true="-co" false="" co}
  >>>
  parameter_meta {
    _aligner_alignment: ", --aligner        Alignment program to use, bwa or clan (default: bwa)"
    _queryfasta_path: ", --query_fasta    Path to query fasta file (default: None)"
    _outdir_path: ", --outdir         Output directory path for the analysis (default: None)"
    x_one: ", --index1        first prioroty index file (default: None)"
    x_two: ", --index2        second priority index file (default: None)"
    fone: ", --ref_fasta1    First prioroty fasta file (default: None)"
    f_two: ", --ref_fasta2    second priority fasta file (default: None)"
    build: "Build indices from reference fasta files (default: False)"
    _processes_number: ", --processes      Number of processes to use (default: 1)"
    _stranded_strandspecificity: ", --stranded       Strand-specificity of input samples. fw = map to transcript strand; rc = map to reverse compliment of transcript strand; both = try to map on both strnads (default: fw)"
    lone: ", --seed_length1  Seed length for 1st mapping iteration. bwa-mem parameter \"-k\" (default: 12)"
    l_two: ", --seed_length2  Seed length for 2nd mapping iteration. bwa-mem parameter \"-k\" (default: 16)"
    s_one: ", --align_score1  Minimum alignment score in 1st mapping iteration. bwa- mem parameter \"-T\" and clan_search parameter \"-l\" (default: 18)"
    s_two: ", --align_score2  Minimum alignment score in 2nd mapping iteration. It must be smaller than --align_score1 parameter. bwa-mem parameter \"-T\" and clan_search parameter \"-l\" (default: 16)"
    ma_one: ", --match1       Matching score for 1st mapping iteration. (default: 1)"
    mm_one: ", --mismatch1    Mismatch penalty for 1st mapping iteration. (default: 4)"
    ma_two: ", --match2       Matching score for 2nd mapping iteration. (default: 1)"
    mm_two: ", --mismatch2    Mismatch penalty for 2nd mapping iteration. (default: 6)"
    go_one: ", --gapopen1     Gap opening penalty for 1st mapping iteration. (default: 6)"
    ge_one: ", --gapext1      Gap extension penalty for 1st mapping iteration. (default: 1)"
    go_two: ", --gapopen2     Gap opening penalty for 2nd mapping iteration. (default: 100)"
    ge_two: ", --gapext2      Gap extension penalty for 2nd mapping iteration. (default: 100)"
    hone: ", --nhits1        Number of allowed multi hits per read (default: 50)"
    h_two: ", --nhits2        Number of allowed multi hits per read in 2nd iteration (default: 100)"
    co: ", --chimeric_overlap  Maximum number of bases allowed between the chimeric segments of a read (default: 2)"
  }
}