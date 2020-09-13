version 1.0

task SocruRebuildProfile {
  input {
    File? output_file
    String? prefix
    Boolean? debug
    Boolean? verbose
    String profile_filename
  }
  command <<<
    socru_rebuild_profile \
      ~{profile_filename} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    output_file: "Output filename (default: updated_profile.txt)"
    prefix: "Prefix (default: GS)"
    debug: "Turn on debugging (default: False)"
    verbose: "Turn on verbose output (default: False)"
    profile_filename: "profile.txt from database"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}