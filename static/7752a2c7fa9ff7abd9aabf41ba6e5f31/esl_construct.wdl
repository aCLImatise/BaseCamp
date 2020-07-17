version 1.0

task EslConstruct {
  input {
    Boolean? print_info_conflicting
    Boolean? _be_verbose
    Boolean? set_sscons_bps
    Boolean? remove_sscons_basepairs
    Boolean? set_sscons_indi
    Boolean? rfc
    String? indi
    Boolean? r_find_i
    String? f_freq
    Boolean? fm_in
    String? output_new_alignment
    Boolean? pfam
    String? list_seqs_w
    String? lmax
    String msa_file
  }
  command <<<
    esl-construct \
      ~{msa_file} \
      ~{true="-a" false="" print_info_conflicting} \
      ~{true="-v" false="" _be_verbose} \
      ~{true="-x" false="" set_sscons_bps} \
      ~{true="-r" false="" remove_sscons_basepairs} \
      ~{true="-c" false="" set_sscons_indi} \
      ~{true="--rfc" false="" rfc} \
      ~{if defined(indi) then ("--indi " +  '"' + indi + '"') else ""} \
      ~{true="--rfindi" false="" r_find_i} \
      ~{if defined(f_freq) then ("--ffreq " +  '"' + f_freq + '"') else ""} \
      ~{true="--fmin" false="" fm_in} \
      ~{if defined(output_new_alignment) then ("-o " +  '"' + output_new_alignment + '"') else ""} \
      ~{true="--pfam" false="" pfam} \
      ~{if defined(list_seqs_w) then ("-l " +  '"' + list_seqs_w + '"') else ""} \
      ~{if defined(lmax) then ("--lmax " +  '"' + lmax + '"') else ""}
  >>>
  parameter_meta {
    print_info_conflicting: ": print info on all conflicting bps in individual structures"
    _be_verbose: ": be verbose"
    set_sscons_bps: ": set SS_cons as max set of non-conflicting bps from indi SSs"
    remove_sscons_basepairs: ": remove SS_cons basepairs that conflicts with > 0 indi SS"
    set_sscons_indi: ": set SS_cons as indi SS with max bps consistent with SS_cons"
    rfc: ": with -c, set RF annotation as seq SS_cons structure comes from"
    indi: ": define SS_cons as individual SS for sequence <x>"
    r_find_i: ": with --indi <x>, define RF annotation as <x>"
    f_freq: ": aln cols i:j become SS_cons bps if paired in > <x> indi SS"
    fm_in: ": same as --ffreq but find min <x> that gives consistent SS_cons"
    output_new_alignment: ": output a new alignment to file <f>"
    pfam: ": output alignment in Pfam (non-interleaved, 1 line/seq) format"
    list_seqs_w: ": list seqs w/> 0 indi bp that conflicts w/a SS_cons bp to file <f>"
    lmax: ": with -l, change maximum allowed conflicts of 0 to <x>  [0]  (n>=0)"
    msa_file: ""
  }
}