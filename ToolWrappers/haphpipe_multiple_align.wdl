version 1.0

task HaphpipeMultipleAlign {
  input {
    File? seqs
    File? dir_list
    File? ref_gtf
    File? out_align
    Boolean? nuc
    Boolean? amino
    Boolean? clustal_out
    Boolean? phylip_out
    Boolean? input_order
    Boolean? reorder
    Boolean? tree_out
    Boolean? quiet_maff_t
    Directory? outdir
    String? algo
    Boolean? auto
    Boolean? six_mer_pair
    Boolean? global_pair
    Boolean? local_pair
    Boolean? gen_afp_air
    Boolean? fast_a_pair
    String? weight_i
    Int? re_tree
    Int? max_iterate
    Boolean? no_score
    Boolean? mem_save
    Boolean? part_tree
    Boolean? dp_part_tree
    Boolean? fast_apart_tree
    Int? part_size
    Int? group_size
    String? gap_opening_penalty
    String? lep
    String? gap_extension_penalty
    String? gap_opening_penalty_skip
    String? gap_extension_penalty_skip
    Int? bl
    Int? jtt
    Int? tm
    File? aa_matrix
    Boolean? f_model
    Int? n_cpu
    Boolean? quiet
    File? log_file
    Boolean? debug
    Boolean? fast_a_only
    Boolean? align_all
  }
  command <<<
    haphpipe multiple_align \
      ~{if defined(seqs) then ("--seqs " +  '"' + seqs + '"') else ""} \
      ~{if defined(dir_list) then ("--dir_list " +  '"' + dir_list + '"') else ""} \
      ~{if defined(ref_gtf) then ("--ref_gtf " +  '"' + ref_gtf + '"') else ""} \
      ~{if defined(out_align) then ("--out_align " +  '"' + out_align + '"') else ""} \
      ~{if (nuc) then "--nuc" else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if (clustal_out) then "--clustalout" else ""} \
      ~{if (phylip_out) then "--phylipout" else ""} \
      ~{if (input_order) then "--inputorder" else ""} \
      ~{if (reorder) then "--reorder" else ""} \
      ~{if (tree_out) then "--treeout" else ""} \
      ~{if (quiet_maff_t) then "--quiet_mafft" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(algo) then ("--algo " +  '"' + algo + '"') else ""} \
      ~{if (auto) then "--auto" else ""} \
      ~{if (six_mer_pair) then "--sixmerpair" else ""} \
      ~{if (global_pair) then "--globalpair" else ""} \
      ~{if (local_pair) then "--localpair" else ""} \
      ~{if (gen_afp_air) then "--genafpair" else ""} \
      ~{if (fast_a_pair) then "--fastapair" else ""} \
      ~{if defined(weight_i) then ("--weighti " +  '"' + weight_i + '"') else ""} \
      ~{if defined(re_tree) then ("--retree " +  '"' + re_tree + '"') else ""} \
      ~{if defined(max_iterate) then ("--maxiterate " +  '"' + max_iterate + '"') else ""} \
      ~{if (no_score) then "--noscore" else ""} \
      ~{if (mem_save) then "--memsave" else ""} \
      ~{if (part_tree) then "--parttree" else ""} \
      ~{if (dp_part_tree) then "--dpparttree" else ""} \
      ~{if (fast_apart_tree) then "--fastaparttree" else ""} \
      ~{if defined(part_size) then ("--partsize " +  '"' + part_size + '"') else ""} \
      ~{if defined(group_size) then ("--groupsize " +  '"' + group_size + '"') else ""} \
      ~{if defined(gap_opening_penalty) then ("--lop " +  '"' + gap_opening_penalty + '"') else ""} \
      ~{if defined(lep) then ("--lep " +  '"' + lep + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("--lexp " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(gap_opening_penalty_skip) then ("--LOP " +  '"' + gap_opening_penalty_skip + '"') else ""} \
      ~{if defined(gap_extension_penalty_skip) then ("--LEXP " +  '"' + gap_extension_penalty_skip + '"') else ""} \
      ~{if defined(bl) then ("--bl " +  '"' + bl + '"') else ""} \
      ~{if defined(jtt) then ("--jtt " +  '"' + jtt + '"') else ""} \
      ~{if defined(tm) then ("--tm " +  '"' + tm + '"') else ""} \
      ~{if defined(aa_matrix) then ("--aamatrix " +  '"' + aa_matrix + '"') else ""} \
      ~{if (f_model) then "--fmodel" else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (fast_a_only) then "--fastaonly" else ""} \
      ~{if (align_all) then "--alignall" else ""}
  >>>
  parameter_meta {
    seqs: "FASTA file with sequences to be aligned"
    dir_list: "List of directories which include either a final.fna\\nor ph_haplotypes.fna file, one on each line"
    ref_gtf: "Reference GTF file"
    out_align: "Name for alignment file"
    nuc: "Assume nucleotide (default: False)"
    amino: "Assume amino (default: False)"
    clustal_out: "Clustal output format (default: False)"
    phylip_out: "PHYLIP output format (default: False)"
    input_order: "Output order same as input (default: False)"
    reorder: "Output order aligned (default: False)"
    tree_out: "Guide tree is output to the input.tree file (default:\\nFalse)"
    quiet_maff_t: "Do not report progress (default: False)"
    outdir: "Output directory"
    algo: "Use different algorithm in command: linsi, ginsi,\\neinsi, fftnsi, fftns, nwns, nwnsi"
    auto: "Automatically select algorithm (default: False)"
    six_mer_pair: "Calculate distance based on shared 6mers, on by\\ndefault (default: False)"
    global_pair: "Use Needleman-Wunsch algorithm (default: False)"
    local_pair: "Use Smith-Waterman algorithm (default: False)"
    gen_afp_air: "Use local algorithm with generalized affine gap cost\\n(default: False)"
    fast_a_pair: "Use FASTA for pairwise alignment (default: False)"
    weight_i: "Weighting factor for consistency term"
    re_tree: "Number of times to build guide tree"
    max_iterate: "Number of cycles for iterative refinement"
    no_score: "Do not check alignment score in iterative alignment\\n(default: False)"
    mem_save: "Use Myers-Miller algorithm (default: False)"
    part_tree: "Use fast tree-building method with 6mer distance\\n(default: False)"
    dp_part_tree: "Use PartTree algorithm with distances based on DP\\n(default: False)"
    fast_apart_tree: "Use PartTree algorithm with distances based on FASTA\\n(default: False)"
    part_size: "Number of partitions for PartTree"
    group_size: "Max number of sequences for PartTree"
    gap_opening_penalty: "Gap opening penalty"
    lep: "Offset value"
    gap_extension_penalty: "Gap extension penalty"
    gap_opening_penalty_skip: "Gap opening penalty to skip alignment"
    gap_extension_penalty_skip: "Gap extension penalty to skip alignment"
    bl: "BLOSUM matrix: 30, 45, 62, or 80"
    jtt: "JTT PAM number >0"
    tm: "Transmembrane PAM number >0"
    aa_matrix: "Path to user-defined AA scoring matrix"
    f_model: "Incorporate AA/nuc composition info into scoring\\nmatrix (default: False)"
    n_cpu: "Number of CPU to use (default: 1)"
    quiet: "Do not write output to console (silence stdout and\\nstderr) (default: False)"
    log_file: "Name for log file (output)"
    debug: "Print commands but do not run (default: False)"
    fast_a_only: "Output fasta files separated by region but do not\\nalign (default: False)"
    align_all: "Do not separate files by region, align entire file\\n(default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_log_file = "${in_log_file}"
  }
}