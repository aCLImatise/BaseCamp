version 1.0

task AlevinfryGeneratepermitlistFLAGS {
  input {
    String? unfiltered_pl
    String? valid_bc
    String? force_cells
    String? expect_cells
    String? output_dir
    String? expected_ori
    String? var_input
  }
  command <<<
    alevin_fry generate_permit_list FLAGS \
      ~{if defined(unfiltered_pl) then ("--unfiltered-pl " +  '"' + unfiltered_pl + '"') else ""} \
      ~{if defined(valid_bc) then ("--valid-bc " +  '"' + valid_bc + '"') else ""} \
      ~{if defined(force_cells) then ("--force-cells " +  '"' + force_cells + '"') else ""} \
      ~{if defined(expect_cells) then ("--expect-cells " +  '"' + expect_cells + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(expected_ori) then ("--expected-ori " +  '"' + expected_ori + '"') else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0"
  }
  parameter_meta {
    unfiltered_pl: ""
    valid_bc: ""
    force_cells: ""
    expect_cells: ""
    output_dir: ""
    expected_ori: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}