version 1.0

task SsuBuild {
  input {
    Boolean? commandline_argument_default
    Boolean? force_allow_overwriting
    String? name_file_s
    String? name_cm_s
    String? append
    String? key_out
    String? trunc
    Boolean? num
    Boolean? output_alignment_interleaved
    Boolean? rf
    String? gap_thresh
    String? pstwo_pdf
    Boolean? ps_only
    Boolean? e_ent
    String? ere
    Boolean? options
    String stockholm_alignment_file_to_build_cm_from
  }
  command <<<
    ssu-build \
      ~{stockholm_alignment_file_to_build_cm_from} \
      ~{true="-d" false="" commandline_argument_default} \
      ~{true="-f" false="" force_allow_overwriting} \
      ~{if defined(name_file_s) then ("-o " +  '"' + name_file_s + '"') else ""} \
      ~{if defined(name_cm_s) then ("-n " +  '"' + name_cm_s + '"') else ""} \
      ~{if defined(append) then ("--append " +  '"' + append + '"') else ""} \
      ~{if defined(key_out) then ("--key-out " +  '"' + key_out + '"') else ""} \
      ~{if defined(trunc) then ("--trunc " +  '"' + trunc + '"') else ""} \
      ~{true="--num" false="" num} \
      ~{true="-i" false="" output_alignment_interleaved} \
      ~{true="--rf" false="" rf} \
      ~{if defined(gap_thresh) then ("--gapthresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if defined(pstwo_pdf) then ("--ps2pdf " +  '"' + pstwo_pdf + '"') else ""} \
      ~{true="--ps-only" false="" ps_only} \
      ~{true="--eent" false="" e_ent} \
      ~{if defined(ere) then ("--ere " +  '"' + ere + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    commandline_argument_default: ": command-line argument is a default ssu-align-0.1 seed alignment"
    force_allow_overwriting: ": force; allow overwriting of CM file"
    name_file_s: ": name the CM *file* <s>"
    name_cm_s: ": name the CM <s>"
    append: ": append this model to CM file <s>"
    key_out: ": add <s> to all output file names, before the suffix"
    trunc: ": only include consensus columns from <x> to <y> (where <s> =\"<x>-<y>\")"
    num: ": output alignment with consensus columns numbered"
    output_alignment_interleaved: ": output alignment in interleaved Stockholm (not 1 line/seq)"
    rf: ": use consensus column (#=GC RF) annotation in alignment"
    gap_thresh: ": define consensus columns as those with gap frequency <= <x> [df: 0.8]"
    pstwo_pdf: ": command for converting ps to pdf is <s> (not \"ps2pdf\")"
    ps_only: ": only save postscript secondary structure diagram, no pdf"
    e_ent: ": use 'entropy weighting' method to achieve target relative entropy"
    ere: ": with --eent, set target relative entropy as <x>"
    options: ""
    stockholm_alignment_file_to_build_cm_from: ""
  }
}