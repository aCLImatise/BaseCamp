version 1.0

task PecheckWrapper.py {
  input {
    String? gzip
    String? jobs
    Boolean? force
    Boolean? dry_run
    String output_directory_created
    String input_directorys_files
  }
  command <<<
    pecheck-wrapper.py \
      ~{output_directory_created} \
      ~{input_directorys_files} \
      ~{if defined(gzip) then ("--gzip " +  '"' + gzip + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--dry-run" false="" dry_run}
  >>>
  parameter_meta {
    gzip: "Which command should be used to gzip? (try pigz!)"
    jobs: "number of parallel jobs"
    force: "Force creation of merged outputs even if they exist"
    dry_run: "Don't actually do anything, just print what would be done"
    output_directory_created: "Output directory (created if non-existant)"
    input_directorys_files: "Input directory(s) or files"
  }
}