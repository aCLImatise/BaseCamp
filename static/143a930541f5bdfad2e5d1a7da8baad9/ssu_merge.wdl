version 1.0

task Ssumerge {
  input {
    Boolean? force_allow_clobbering
    Boolean? rf_only
    Boolean? keep
    Boolean? input_alignments_interleaved
    Boolean? dna
    File? list
    Boolean? options
    Int one
    String output_dir_created_by_ssu_prep
    String a_lns
    String to
    String merge
  }
  command <<<
    ssu_merge \
      ~{one} \
      ~{output_dir_created_by_ssu_prep} \
      ~{a_lns} \
      ~{to} \
      ~{merge} \
      ~{if (force_allow_clobbering) then "-f" else ""} \
      ~{if (rf_only) then "--rfonly" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (input_alignments_interleaved) then "-i" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    force_allow_clobbering: ": force; allow file clobbering"
    rf_only: ": when merging alignments, only keep consensus (non-gap RF) columns"
    keep: ": don't remove original files after they have been merged"
    input_alignments_interleaved: ": input alignments are interleaved Stockholm format (not 1 line/seq)"
    dna: ": output alignments as DNA, default is RNA (even if input is DNA)"
    list: ""
    options: ""
    one: ""
    output_dir_created_by_ssu_prep: ""
    a_lns: ""
    to: ""
    merge: ""
  }
  output {
    File out_stdout = stdout()
  }
}