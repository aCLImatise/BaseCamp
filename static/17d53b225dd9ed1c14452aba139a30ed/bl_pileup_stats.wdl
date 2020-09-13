version 1.0

task Blpileupstats {
  input {
    Boolean? specify_pileup_file
    File? specify_output_file
    Boolean? specify_min_default
    String pile_up_stats
  }
  command <<<
    bl_pileup_stats \
      ~{pile_up_stats} \
      ~{if (specify_pileup_file) then "-i" else ""} \
      ~{if (specify_output_file) then "-o" else ""} \
      ~{if (specify_min_default) then "-m" else ""}
  >>>
  parameter_meta {
    specify_pileup_file: "specify the PILEUP input file"
    specify_output_file: "specify the HIST output file"
    specify_min_default: "specify the min OVERLAP (default: 0)"
    pile_up_stats: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}