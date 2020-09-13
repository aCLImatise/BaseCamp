version 1.0

task Unpack200 {
  input {
    Boolean? override_transmitted_deflate
    Boolean? remove_pack_file
    Boolean? verbose
    Boolean? quiet
    File? output_given_log
  }
  command <<<
    unpack200 \
      ~{if (override_transmitted_deflate) then "-H" else ""} \
      ~{if (remove_pack_file) then "--remove-pack-file" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (output_given_log) then "-l" else ""}
  >>>
  parameter_meta {
    override_transmitted_deflate: "{h}, --deflate-hint={h}     override transmitted deflate hint:\\ntrue, false, or keep (default)"
    remove_pack_file: "remove input file after unpacking"
    verbose: "increase program verbosity"
    quiet: "set verbosity to lowest level"
    output_given_log: "{F}, --log-file={F}         output to the given log file,\\nor '-' for standard output (default)"
  }
  output {
    File out_stdout = stdout()
    File out_output_given_log = "${in_output_given_log}"
  }
}