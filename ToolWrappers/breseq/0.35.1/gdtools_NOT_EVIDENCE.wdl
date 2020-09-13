version 1.0

task GdtoolsNOTEVIDENCE {
  input {
    File? output_gd_file
    Boolean? id
    Boolean? verbose
  }
  command <<<
    gdtools NOT_EVIDENCE \
      ~{if defined(output_gd_file) then ("--output " +  '"' + output_gd_file + '"') else ""} \
      ~{if (id) then "--id" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    output_gd_file: "output GD file (DEFAULT=output.gd)"
    id: "Reorder IDs (Flag)"
    verbose: "Verbose Mode (Flag)"
  }
  output {
    File out_stdout = stdout()
    File out_output_gd_file = "${in_output_gd_file}"
  }
}