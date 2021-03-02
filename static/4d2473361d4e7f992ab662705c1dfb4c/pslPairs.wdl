version 1.0

task PslPairs {
  input {
    Int? max
    Int? min
    Int? slop_val
    Float? near_top
    Float? mini_d
    Float? min_orphan_id
    Int? t_insert
    Int? hard_max
    Boolean? verbose
    File? no_bin
    Boolean? no_random
    Boolean? slop
    Boolean? short
    Boolean? long
    Boolean? mismatch
    Boolean? orphan
    String psl_file
    String pair_file
    String psl_tablename
  }
  command <<<
    pslPairs \
      ~{psl_file} \
      ~{pair_file} \
      ~{psl_tablename} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(slop_val) then ("-slopval " +  '"' + slop_val + '"') else ""} \
      ~{if defined(near_top) then ("-nearTop " +  '"' + near_top + '"') else ""} \
      ~{if defined(mini_d) then ("-minId " +  '"' + mini_d + '"') else ""} \
      ~{if defined(min_orphan_id) then ("-minOrphanId " +  '"' + min_orphan_id + '"') else ""} \
      ~{if defined(t_insert) then ("-tInsert " +  '"' + t_insert + '"') else ""} \
      ~{if defined(hard_max) then ("-hardMax " +  '"' + hard_max + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (no_bin) then "-noBin" else ""} \
      ~{if (no_random) then "-noRandom" else ""} \
      ~{if (slop) then "-slop" else ""} \
      ~{if (short) then "-short" else ""} \
      ~{if (long) then "-long" else ""} \
      ~{if (mismatch) then "-mismatch" else ""} \
      ~{if (orphan) then "-orphan" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max: "- maximum length of clone sequence (default=47000)"
    min: "- minimum length of clone sequence (default=32000)"
    slop_val: "- deviation from max/min clone lengths allowed for slop report\\n- (default=5000)"
    near_top: "- maximium deviation from best match allowed (default=0.001)"
    mini_d: "- minimum pct ID of at least one end (default=0.96)"
    min_orphan_id: "- minimum pct ID for orphan alignment (default=0.96)"
    t_insert: "- maximum insert bases allowed in sequence alignment\\n- (default=500)"
    hard_max: "- absolute maximum clone length for long report (default=75000)"
    verbose: "- display all informational messages"
    no_bin: "- do not include bin column in output file"
    no_random: "- do not include placements on random portions\\n- {length(chr name) < 7}"
    slop: "- create <outFilePrefix>.slop file of pairs that fall within\\n- slop length"
    short: "- create <outFilePrefix>.short file of pairs shorter than\\n- min size"
    long: "- create <outFilePrefix>.long file of pairs longer than\\n- max size, but less than hardMax size"
    mismatch: "- create <outFilePrefix>.mismatch file of pairs with\\n- bad orientation of ends"
    orphan: "- create <outFilePrefix>.orphan file of unmatched end sequences"
    psl_file: "- filtered psl alignments of ends from kluster run"
    pair_file: "- three column tab separated: forward reverse cloneId\\n- forward and reverse columns can be comma separated end ids"
    psl_tablename: "- table name the psl alignments have been loaded into"
  }
  output {
    File out_stdout = stdout()
    File out_no_bin = "${in_no_bin}"
  }
}