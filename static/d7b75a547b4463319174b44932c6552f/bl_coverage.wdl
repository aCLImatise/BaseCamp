version 1.0

task Blcoverage {
  input {
    Boolean? specify_sam_file
    Boolean? sam_input_single
    String? o
    String coverage
  }
  command <<<
    bl_coverage \
      ~{coverage} \
      ~{if (specify_sam_file) then "-i" else ""} \
      ~{if (sam_input_single) then "-1" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    specify_sam_file: "specify SAM input file"
    sam_input_single: "SAM input has a single reference: report coverage for each index\\nin the reference\\n"
    o: ""
    coverage: ""
  }
  output {
    File out_stdout = stdout()
  }
}