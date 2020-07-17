version 1.0

task GdtoolsNOTEVIDENCE {
  input {
    String? output_gd_file
    Boolean? id
    Boolean? verbose
  }
  command <<<
    gdtools NOT-EVIDENCE \
      ~{if defined(output_gd_file) then ("--output " +  '"' + output_gd_file + '"') else ""} \
      ~{true="--id" false="" id} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    output_gd_file: "output GD file (DEFAULT=output.gd)"
    id: "Reorder IDs (Flag)"
    verbose: "Verbose Mode (Flag)"
  }
}