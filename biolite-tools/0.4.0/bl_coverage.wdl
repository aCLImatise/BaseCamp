version 1.0

task BlCoverage {
  input {
    Boolean? specify_sam_file
    Boolean? sam_input_single
    String? o
    String coverage
  }
  command <<<
    bl-coverage \
      ~{coverage} \
      ~{true="-i" false="" specify_sam_file} \
      ~{true="-1" false="" sam_input_single} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    specify_sam_file: "specify SAM input file"
    sam_input_single: "SAM input has a single reference: report coverage for each index in the reference"
    o: ""
    coverage: ""
  }
}