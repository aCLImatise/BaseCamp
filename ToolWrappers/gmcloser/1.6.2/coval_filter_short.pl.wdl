version 1.0

task Covalfiltershortpl {
  input {
    File? ref
    File? pref
    Int? num
    Int? m_rate
    String? var_4
    String var_5
    String c_oval
    String maximum
    String out_prefix_dot_bam
    String prefix
    String reference
    String fast_a
    String filter
    String var_13
    Int number
    String of
    String rate
    File var_file
    String input_sorted_bam_slash_sam_file
    String var_19
    String mismatches
    String used
    String contained
    String for
    String in
    String the
    String a
    String read
    Float? zero_dot_dot_one_dot_zero
  }
  command <<<
    coval_filter_short_pl \
      ~{var_5} \
      ~{c_oval} \
      ~{maximum} \
      ~{out_prefix_dot_bam} \
      ~{prefix} \
      ~{reference} \
      ~{fast_a} \
      ~{filter} \
      ~{var_13} \
      ~{number} \
      ~{of} \
      ~{rate} \
      ~{var_file} \
      ~{input_sorted_bam_slash_sam_file} \
      ~{var_19} \
      ~{mismatches} \
      ~{used} \
      ~{contained} \
      ~{for} \
      ~{in} \
      ~{the} \
      ~{a} \
      ~{read} \
      ~{zero_dot_dot_one_dot_zero} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(pref) then ("--pref " +  '"' + pref + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if defined(m_rate) then ("--mrate " +  '"' + m_rate + '"') else ""} \
      ~{if defined(var_4) then ("--help " +  '"' + var_4 + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: "reference fasta file used for the alignment"
    pref: "prefix of output file"
    num: "maximum number of mismatches contained in a read [default: 2] (incompatible with --mrate)"
    m_rate: "maximum rate of mismatches contained in a read [0..1.0] (incompatible with --num)"
    var_4: ""
    var_5: ""
    c_oval: ""
    maximum: ""
    out_prefix_dot_bam: ""
    prefix: ""
    reference: ""
    fast_a: ""
    filter: ""
    var_13: ""
    number: ""
    of: ""
    rate: ""
    var_file: ""
    input_sorted_bam_slash_sam_file: ""
    var_19: ""
    mismatches: ""
    used: ""
    contained: ""
    for: ""
    in: ""
    the: ""
    a: ""
    read: ""
    zero_dot_dot_one_dot_zero: ""
  }
  output {
    File out_stdout = stdout()
    File out_pref = "${in_pref}"
  }
}