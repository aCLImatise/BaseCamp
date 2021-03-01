version 1.0

task Blcoverage {
  input {
    Boolean? specify_input_file
    Boolean? sam_input_has
    String? o
    String coverage
  }
  command <<<
    bl_coverage \
      ~{coverage} \
      ~{if (specify_input_file) then "-i" else ""} \
      ~{if (sam_input_has) then "-1" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_input_file: "specify SAM input file"
    sam_input_has: "SAM input has a single reference: report coverage for each index\\nin the reference\\n"
    o: ""
    coverage: ""
  }
  output {
    File out_stdout = stdout()
  }
}