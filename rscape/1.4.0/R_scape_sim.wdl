version 1.0

task Rscapesim {
  input {
    Boolean? _be_verbose
    Boolean? dna
    Boolean? rna
    Boolean? amino
    Boolean? naive
    Boolean? rn_ass
    Boolean? potts
    File? potts_file
    Int? cnt_maxd
    String? pdb_file
    Int? pott_sigma
    Boolean? ptp_gauss
    Boolean? ptp_file
    Int? _length_alignment
    Int? number_sequences_simulated
    Int? abl
    Int? at_bl
    Boolean? no_indels
    Boolean? eq_branch
    Boolean? star
    Boolean? rand
    Boolean? given
    Boolean? sim
    String? uses_q
    String? evo_model
    File? ribo_file
    String? mx
    Directory? outdir
    File? send_output_file
    String? in_format
    Boolean? one_msa
    String? filter_seqs_xseqcons
    String? var_32
    String? var_33
    String? gap_thresh
    String? mini_d
    String? max_id
    String? to_l
    String? seed
    Boolean? options
    String msa
  }
  command <<<
    R_scape_sim \
      ~{msa} \
      ~{if (_be_verbose) then "-v" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if (naive) then "--naive" else ""} \
      ~{if (rn_ass) then "--rnass" else ""} \
      ~{if (potts) then "--potts" else ""} \
      ~{if defined(potts_file) then ("--pottsfile " +  '"' + potts_file + '"') else ""} \
      ~{if defined(cnt_maxd) then ("--cntmaxD " +  '"' + cnt_maxd + '"') else ""} \
      ~{if defined(pdb_file) then ("--pdbfile " +  '"' + pdb_file + '"') else ""} \
      ~{if defined(pott_sigma) then ("--pottsigma " +  '"' + pott_sigma + '"') else ""} \
      ~{if (ptp_gauss) then "--ptpgauss" else ""} \
      ~{if (ptp_file) then "--ptpfile" else ""} \
      ~{if defined(_length_alignment) then ("-L " +  '"' + _length_alignment + '"') else ""} \
      ~{if defined(number_sequences_simulated) then ("-N " +  '"' + number_sequences_simulated + '"') else ""} \
      ~{if defined(abl) then ("--abl " +  '"' + abl + '"') else ""} \
      ~{if defined(at_bl) then ("--atbl " +  '"' + at_bl + '"') else ""} \
      ~{if (no_indels) then "--noindels" else ""} \
      ~{if (eq_branch) then "--eqbranch" else ""} \
      ~{if (star) then "--star" else ""} \
      ~{if (rand) then "--rand" else ""} \
      ~{if (given) then "--given" else ""} \
      ~{if (sim) then "--sim" else ""} \
      ~{if defined(uses_q) then ("--usesq " +  '"' + uses_q + '"') else ""} \
      ~{if defined(evo_model) then ("--evomodel " +  '"' + evo_model + '"') else ""} \
      ~{if defined(ribo_file) then ("--ribofile " +  '"' + ribo_file + '"') else ""} \
      ~{if defined(mx) then ("--mx " +  '"' + mx + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(send_output_file) then ("-o " +  '"' + send_output_file + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (one_msa) then "--onemsa" else ""} \
      ~{if defined(filter_seqs_xseqcons) then ("-F " +  '"' + filter_seqs_xseqcons + '"') else ""} \
      ~{if defined(var_32) then ("-I " +  '"' + var_32 + '"') else ""} \
      ~{if defined(var_33) then ("-i " +  '"' + var_33 + '"') else ""} \
      ~{if defined(gap_thresh) then ("--gapthresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if defined(mini_d) then ("--minid " +  '"' + mini_d + '"') else ""} \
      ~{if defined(max_id) then ("--maxid " +  '"' + max_id + '"') else ""} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    _be_verbose: ": be verbose"
    dna: ": use DNA alphabet"
    rna: ": use RNA alphabet"
    amino: ": use protein alphabet"
    naive: ": naive simulation: independent positions"
    rn_ass: ": simulation according to a RNA secondary structure"
    potts: ": Metropolis-Hastins for a potts model"
    potts_file: ": read potts params from file <f>"
    cnt_maxd: ": max distance for contact definition"
    pdb_file: ": read contacts from pdbfile <f>"
    pott_sigma: ": if sampling param from a N(0,sigma)"
    ptp_gauss: ": potts param sampled from a Gaussian distribution"
    ptp_file: ": potts param from file pottsfile"
    _length_alignment: ": length of the alignment"
    number_sequences_simulated: ": number of sequences in the simulated msa, N=0 for use all"
    abl: ": tree average branch length in number of changes per site"
    at_bl: ": tree average total branch length in number of changes per site"
    no_indels: ": produces ungapped alignments"
    eq_branch: ": make all branch lengths equal size"
    star: ": star topology"
    rand: ": independent sequences"
    given: ": given msa topology"
    sim: ": simulated topology"
    uses_q: ": sq from the origional msa used as root (default random)"
    evo_model: ": evolutionary model used"
    ribo_file: ": read ribosum structure from file <f>"
    mx: ": substitution rate matrix choice (of some built-in matrices)"
    outdir: ": specify a directory for all output files"
    send_output_file: ": send output to file <f>, not stdout"
    in_format: ": specify format"
    one_msa: ": if file has more than one msa, analyze only the first one"
    filter_seqs_xseqcons: ": filter out seqs <x*seq_cons residues"
    var_32: ": require seqs to have < <x> id"
    var_33: ": require seqs to have >= <x> id"
    gap_thresh: ": keep columns with < <x> fraction of gaps"
    mini_d: ": minimum avgid of the given alignment"
    max_id: ": maximum avgid of the given alignment"
    to_l: ": tolerance"
    seed: ": set RNG seed to <n>"
    options: ""
    msa: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_send_output_file = "${in_send_output_file}"
  }
}