version 1.0

task Ssubuild {
  input {
    Boolean? commandline_argument_default
    Boolean? force_allow_overwriting
    File? name_cm_file
    String? name_cm_s
    File? append
    File? key_out
    String? trunc
    Boolean? num
    Boolean? output_alignment_lineseq
    Float? gap_thresh
    Int? pstwo_pdf
    Boolean? ps_only
    Boolean? e_ent
    String? ere
    Boolean? options
    File stockholm_alignment_file_to_build_cm_from
  }
  command <<<
    ssu_build \
      ~{stockholm_alignment_file_to_build_cm_from} \
      ~{if (commandline_argument_default) then "-d" else ""} \
      ~{if (force_allow_overwriting) then "-f" else ""} \
      ~{if defined(name_cm_file) then ("-o " +  '"' + name_cm_file + '"') else ""} \
      ~{if defined(name_cm_s) then ("-n " +  '"' + name_cm_s + '"') else ""} \
      ~{if defined(append) then ("--append " +  '"' + append + '"') else ""} \
      ~{if defined(key_out) then ("--key-out " +  '"' + key_out + '"') else ""} \
      ~{if defined(trunc) then ("--trunc " +  '"' + trunc + '"') else ""} \
      ~{if (num) then "--num" else ""} \
      ~{if (output_alignment_lineseq) then "-i" else ""} \
      ~{if defined(gap_thresh) then ("--gapthresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if defined(pstwo_pdf) then ("--ps2pdf " +  '"' + pstwo_pdf + '"') else ""} \
      ~{if (ps_only) then "--ps-only" else ""} \
      ~{if (e_ent) then "--eent" else ""} \
      ~{if defined(ere) then ("--ere " +  '"' + ere + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    commandline_argument_default: ": command-line argument is a default ssu-align-0.1 seed alignment"
    force_allow_overwriting: ": force; allow overwriting of CM file"
    name_cm_file: ": name the CM *file* <s>"
    name_cm_s: ": name the CM <s>"
    append: ": append this model to CM file <s>"
    key_out: ": add <s> to all output file names, before the suffix"
    trunc: ": only include consensus columns from <x> to <y> (where <s> =\\\"<x>-<y>\\\")"
    num: ": output alignment with consensus columns numbered"
    output_alignment_lineseq: ": output alignment in interleaved Stockholm (not 1 line/seq)"
    gap_thresh: ": define consensus columns as those with gap frequency <= <x> [df: 0.8]"
    pstwo_pdf: ": command for converting ps to pdf is <s> (not \\\"ps2pdf\\\")"
    ps_only: ": only save postscript secondary structure diagram, no pdf"
    e_ent: ": use 'entropy weighting' method to achieve target relative entropy"
    ere: ": with --eent, set target relative entropy as <x>"
    options: ""
    stockholm_alignment_file_to_build_cm_from: ""
  }
  output {
    File out_stdout = stdout()
    File out_key_out = "${in_key_out}"
  }
}