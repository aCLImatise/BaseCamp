version 1.0

task MulledBuildFiles {
  input {
    String? invo_lucro_path
    Boolean? dry_run
    String command_buildandtest_build
    File files
  }
  command <<<
    mulled-build-files \
      ~{command_buildandtest_build} \
      ~{files} \
      ~{if defined(invo_lucro_path) then ("--involucro-path " +  '"' + invo_lucro_path + '"') else ""} \
      ~{true="--dry-run" false="" dry_run}
  >>>
  parameter_meta {
    invo_lucro_path: ""
    dry_run: ""
    command_buildandtest_build: "Command (build-and-test, build, all)"
    files: "Path to directory (or single file) of TSV files describing composite recipes."
  }
}