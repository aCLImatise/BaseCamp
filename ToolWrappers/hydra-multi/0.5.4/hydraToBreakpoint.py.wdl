version 1.0

task HydraToBreakpointpy {
  input {
    File? bedpe_file_entry
    Int? slop_hydra_footprint
    Int? slop_hydra_away
    Int? range_bedpe_coordinates
    File? c
    String? b
  }
  command <<<
    hydraToBreakpoint_py \
      ~{if defined(bedpe_file_entry) then ("-i " +  '"' + bedpe_file_entry + '"') else ""} \
      ~{if defined(slop_hydra_footprint) then ("-t " +  '"' + slop_hydra_footprint + '"') else ""} \
      ~{if defined(slop_hydra_away) then ("-n " +  '"' + slop_hydra_away + '"') else ""} \
      ~{if defined(range_bedpe_coordinates) then ("-r " +  '"' + range_bedpe_coordinates + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    bedpe_file_entry: "bedpe file in which entry 1 < entry 2; for stdin type \\\"stdin\\\""
    slop_hydra_footprint: "slop out from the HYDRA footprint towards the breakpoint (half\\nof average library size seems like a good number for predicting\\nbreakpoints) [default = 200]"
    slop_hydra_away: "slop in towards the HYDRA footprint, away from the breakpoint\\n[default = 10]"
    range_bedpe_coordinates: "the range of bedpe coordinates considered local [default =\\n1000000] Calculated by subtracting field 6 from field 2.\\n"
    c: ""
    b: ""
  }
  output {
    File out_stdout = stdout()
  }
}