version 1.0

task GemBSMergeBcfs {
  input {
    String? sample_name
    String? sample_barcode
    String? threads
    Boolean? remove
    String? jobs
    Boolean? dry_run
    String? json
    Boolean? ignore_db
  }
  command <<<
    gemBS merge-bcfs \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(sample_barcode) then ("--sample-barcode " +  '"' + sample_barcode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--remove" false="" remove} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{true="--dry-run" false="" dry_run} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""} \
      ~{true="--ignore-db" false="" ignore_db}
  >>>
  parameter_meta {
    sample_name: "Nmae of sample to be merged"
    sample_barcode: "Barcode of sample to be merged"
    threads: "Number of threads"
    remove: "Remove individual BAM files after merging."
    jobs: "Number of parallel jobs"
    dry_run: "Output mapping commands without execution"
    json: "FILE      Output JSON file with details of pending commands"
    ignore_db: "Ignore database for --dry-run and --json commands"
  }
}