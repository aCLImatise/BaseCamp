version 1.0

task NetClass {
  input {
    String? t_new_r
    String? q_new_r
    Boolean? no_ar
    String? q_repeats
    String? t_repeats
    File? lift_q
    File? lift_t
    String in_dotnet
    String tdb
    String qdb
    String out_dotnet
  }
  command <<<
    netClass \
      ~{in_dotnet} \
      ~{tdb} \
      ~{qdb} \
      ~{out_dotnet} \
      ~{if defined(t_new_r) then ("-tNewR " +  '"' + t_new_r + '"') else ""} \
      ~{if defined(q_new_r) then ("-qNewR " +  '"' + q_new_r + '"') else ""} \
      ~{if (no_ar) then "-noAr" else ""} \
      ~{if defined(q_repeats) then ("-qRepeats " +  '"' + q_repeats + '"') else ""} \
      ~{if defined(t_repeats) then ("-tRepeats " +  '"' + t_repeats + '"') else ""} \
      ~{if defined(lift_q) then ("-liftQ " +  '"' + lift_q + '"') else ""} \
      ~{if defined(lift_t) then ("-liftT " +  '"' + lift_t + '"') else ""}
  >>>
  parameter_meta {
    t_new_r: "- Dir of chrN.out.spec files, with RepeatMasker .out format\\nlines describing lineage specific repeats in target"
    q_new_r: "- Dir of chrN.out.spec files for query"
    no_ar: "- Don't look for ancient repeats"
    q_repeats: "- table name for query repeats in place of rmsk"
    t_repeats: "- table name for target repeats in place of rmsk\\n- for example: -tRepeats=windowmaskerSdust"
    lift_q: "- Lift in.net's query coords to chrom-level using\\nfile.lft (for accessing chrom-level coords in qDb)"
    lift_t: "- Lift in.net's target coords to chrom-level using\\nfile.lft (for accessing chrom-level coords in tDb)\\n"
    in_dotnet: ""
    tdb: ""
    qdb: ""
    out_dotnet: ""
  }
  output {
    File out_stdout = stdout()
  }
}