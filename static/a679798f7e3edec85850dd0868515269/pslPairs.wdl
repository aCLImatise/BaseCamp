version 1.0

task PslPairs {
  input {
    String? max
    String? min
    String? slop_val
    String? near_top
    String? mini_d
    String? min_orphan_id
    String? t_insert
    String? hard_max
    Boolean? verbose
    Boolean? no_bin
    Boolean? no_random
    Boolean? slop
    Boolean? short
    Boolean? long
    Boolean? mismatch
    Boolean? orphan
    String psl_file
    String pair_file
    String psl_tablename
    String outfile_prefix
  }
  command <<<
    pslPairs \
      ~{psl_file} \
      ~{pair_file} \
      ~{psl_tablename} \
      ~{outfile_prefix} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(slop_val) then ("-slopval " +  '"' + slop_val + '"') else ""} \
      ~{if defined(near_top) then ("-nearTop " +  '"' + near_top + '"') else ""} \
      ~{if defined(mini_d) then ("-minId " +  '"' + mini_d + '"') else ""} \
      ~{if defined(min_orphan_id) then ("-minOrphanId " +  '"' + min_orphan_id + '"') else ""} \
      ~{if defined(t_insert) then ("-tInsert " +  '"' + t_insert + '"') else ""} \
      ~{if defined(hard_max) then ("-hardMax " +  '"' + hard_max + '"') else ""} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-noBin" false="" no_bin} \
      ~{true="-noRandom" false="" no_random} \
      ~{true="-slop" false="" slop} \
      ~{true="-short" false="" short} \
      ~{true="-long" false="" long} \
      ~{true="-mismatch" false="" mismatch} \
      ~{true="-orphan" false="" orphan}
  >>>
  parameter_meta {
    max: "- maximum length of clone sequence (default=47000)"
    min: "- minimum length of clone sequence (default=32000)"
    slop_val: "- deviation from max/min clone lengths allowed for slop report - (default=5000)"
    near_top: "- maximium deviation from best match allowed (default=0.001)"
    mini_d: "- minimum pct ID of at least one end (default=0.96)"
    min_orphan_id: "- minimum pct ID for orphan alignment (default=0.96)"
    t_insert: "- maximum insert bases allowed in sequence alignment - (default=500)"
    hard_max: "- absolute maximum clone length for long report (default=75000)"
    verbose: "- display all informational messages"
    no_bin: "- do not include bin column in output file"
    no_random: "- do not include placements on random portions - {length(chr name) < 7}"
    slop: "- create <outFilePrefix>.slop file of pairs that fall within - slop length"
    short: "- create <outFilePrefix>.short file of pairs shorter than - min size"
    long: "- create <outFilePrefix>.long file of pairs longer than - max size, but less than hardMax size"
    mismatch: "- create <outFilePrefix>.mismatch file of pairs with - bad orientation of ends"
    orphan: "- create <outFilePrefix>.orphan file of unmatched end sequences"
    psl_file: ""
    pair_file: ""
    psl_tablename: ""
    outfile_prefix: ""
  }
}