version 1.0

task CovalFilterShort.pl {
  input {
    String? ref
    String? pref
    String? num
    String? m_rate
    String c_oval
    String filter
    String input_sorted_bam_slash_sam_file
  }
  command <<<
    coval-filter-short.pl \
      ~{c_oval} \
      ~{filter} \
      ~{input_sorted_bam_slash_sam_file} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(pref) then ("--pref " +  '"' + pref + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if defined(m_rate) then ("--mrate " +  '"' + m_rate + '"') else ""}
  >>>
  parameter_meta {
    ref: "reference fasta file used for the alignment"
    pref: "prefix of output file"
    num: "maximum number of mismatches contained in a read [default: 2] (incompatible with --mrate)"
    m_rate: "maximum rate of mismatches contained in a read [0..1.0] (incompatible with --num)"
    c_oval: ""
    filter: ""
    input_sorted_bam_slash_sam_file: ""
  }
}