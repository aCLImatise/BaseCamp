version 1.0

task Hmmbuild2 {
  input {
    String? name_name_first
    String? resave_annotated_alignment
    Boolean? append_append_hmm
    Boolean? force_allow_overwriting
    Boolean? multihit_local_hmmfs
    Boolean? global_alignment_hmms
    Boolean? local_alignment_hmmsw
    Boolean? fast
    Boolean? hand
    Boolean? null
    Boolean? pam
    String? prior
    Boolean? w_blosum
    Boolean? wgs_c
    Boolean? w_me
    Boolean? wpb
    Boolean? w_voronoi
    Boolean? w_none
    Boolean? no_eff
    String? pb_switch
    Boolean? amino
    Boolean? nucleic
    String? arch_pri
    Boolean? binary
    String? c_file
    String? gap_max
    String? id_level
    String? in_format
    String? pam_wgt
    String? sw_entry
    String? sw_exit
    Boolean? verbose
    Boolean? options
    String hmmbuild
    String hmm_file_output
    String alignment_file
  }
  command <<<
    hmmbuild2 \
      ~{hmmbuild} \
      ~{hmm_file_output} \
      ~{alignment_file} \
      ~{if defined(name_name_first) then ("-n " +  '"' + name_name_first + '"') else ""} \
      ~{if defined(resave_annotated_alignment) then ("-o " +  '"' + resave_annotated_alignment + '"') else ""} \
      ~{true="-A" false="" append_append_hmm} \
      ~{true="-F" false="" force_allow_overwriting} \
      ~{true="-f" false="" multihit_local_hmmfs} \
      ~{true="-g" false="" global_alignment_hmms} \
      ~{true="-s" false="" local_alignment_hmmsw} \
      ~{true="--fast" false="" fast} \
      ~{true="--hand" false="" hand} \
      ~{true="--null" false="" null} \
      ~{true="--pam" false="" pam} \
      ~{if defined(prior) then ("--prior " +  '"' + prior + '"') else ""} \
      ~{true="--wblosum" false="" w_blosum} \
      ~{true="--wgsc" false="" wgs_c} \
      ~{true="--wme" false="" w_me} \
      ~{true="--wpb" false="" wpb} \
      ~{true="--wvoronoi" false="" w_voronoi} \
      ~{true="--wnone" false="" w_none} \
      ~{true="--noeff" false="" no_eff} \
      ~{if defined(pb_switch) then ("--pbswitch " +  '"' + pb_switch + '"') else ""} \
      ~{true="--amino" false="" amino} \
      ~{true="--nucleic" false="" nucleic} \
      ~{if defined(arch_pri) then ("--archpri " +  '"' + arch_pri + '"') else ""} \
      ~{true="--binary" false="" binary} \
      ~{if defined(c_file) then ("--cfile " +  '"' + c_file + '"') else ""} \
      ~{if defined(gap_max) then ("--gapmax " +  '"' + gap_max + '"') else ""} \
      ~{if defined(id_level) then ("--idlevel " +  '"' + id_level + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(pam_wgt) then ("--pamwgt " +  '"' + pam_wgt + '"') else ""} \
      ~{if defined(sw_entry) then ("--swentry " +  '"' + sw_entry + '"') else ""} \
      ~{if defined(sw_exit) then ("--swexit " +  '"' + sw_exit + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    name_name_first: ": name; name this (first) HMM <s>"
    resave_annotated_alignment: ": re-save annotated alignment to <f>"
    append_append_hmm: ": append; append this HMM to <hmmfile>"
    force_allow_overwriting: ": force; allow overwriting of <hmmfile>"
    multihit_local_hmmfs: ": multi-hit local (hmmfs style)"
    global_alignment_hmms: ": global alignment (hmms style, Needleman/Wunsch)"
    local_alignment_hmmsw: ": local alignment (hmmsw style, Smith/Waterman)"
    fast: ": Krogh/Haussler fast heuristic construction (see --gapmax)"
    hand: ": manual construction (requires annotated alignment)"
    null: "<f>   : read null (random sequence) model from <f>"
    pam: "<f>   : heuristic PAM-based prior, using BLAST PAM matrix in <f>"
    prior: ": read Dirichlet prior parameters from <f>"
    w_blosum: ": Henikoff simple filter weights (see --idlevel)"
    wgs_c: ": Gerstein/Sonnhammer/Chothia tree weights (default)"
    w_me: ": maximum entropy (ME)"
    wpb: ": Henikoff position-based weights"
    w_voronoi: ": Sibbald/Argos Voronoi weights"
    w_none: ": don't do any weighting"
    no_eff: ": don't use effective sequence number; just use nseq"
    pb_switch: ": set switch from GSC to position-based wgts at > n seqs"
    amino: ": override autodetection, assert that seqs are protein"
    nucleic: ": override autodetection, assert that seqs are DNA/RNA"
    arch_pri: ": set architecture size prior to <x> {0.85} [0..1]"
    binary: ": save the model in binary format, not ASCII text"
    c_file: ": save count vectors to <f>"
    gap_max: ": max fraction of gaps in mat column {0.50} [0..1]"
    id_level: ": set frac. id level used by eff. nseq and --wblosum {0.62}"
    in_format: ": input alignment is in format <s>, not Stockholm"
    pam_wgt: ": set weight on PAM-based prior to <x> {20.}[>=0]"
    sw_entry: ": set S/W aggregate entry prob. to <x> {0.5}"
    sw_exit: ": set S/W aggregate exit prob. to <x>  {0.5}"
    verbose: ": print boring information"
    options: ""
    hmmbuild: ""
    hmm_file_output: ""
    alignment_file: ""
  }
}