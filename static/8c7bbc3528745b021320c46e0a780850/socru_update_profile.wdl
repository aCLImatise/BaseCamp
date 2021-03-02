version 1.0

task SocruUpdateProfile {
  input {
    File? output_file
    Boolean? debug
    Boolean? verbose
    String so_cru_output_filename
    String profile_filename
  }
  command <<<
    socru_update_profile \
      ~{so_cru_output_filename} \
      ~{profile_filename} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file: "Output filename (default: updated_profile.txt)"
    debug: "Turn on debugging (default: False)"
    verbose: "Turn on verbose output (default: False)"
    so_cru_output_filename: "Socru output file"
    profile_filename: "profile.txt from database"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}