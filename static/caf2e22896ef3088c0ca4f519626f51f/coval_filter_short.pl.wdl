version 1.0

task Covalfiltershortpl {
  input {
    File? ref
    File? pref
    Int? num
    Int? m_rate
    String? help
    String out_prefix_dot_bam_slash_sam
  }
  command <<<
    coval_filter_short_pl \
      ~{out_prefix_dot_bam_slash_sam} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(pref) then ("--pref " +  '"' + pref + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if defined(m_rate) then ("--mrate " +  '"' + m_rate + '"') else ""} \
      ~{if defined(help) then ("--help " +  '"' + help + '"') else ""}
  >>>
  parameter_meta {
    ref: "reference fasta file used for the alignment"
    pref: "prefix of output file"
    num: "maximum number of mismatches contained in a read [default: 2] (incompatible with --mrate)"
    m_rate: "maximum rate of mismatches contained in a read [0..1.0] (incompatible with --num)"
    help: ""
    out_prefix_dot_bam_slash_sam: "Options:"
  }
  output {
    File out_stdout = stdout()
    File out_pref = "${in_pref}"
  }
}