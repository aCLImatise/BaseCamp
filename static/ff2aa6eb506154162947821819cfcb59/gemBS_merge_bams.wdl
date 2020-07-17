version 1.0

task GemBSMergeBams {
  input {
    String? threads
    String? sample_name
    String? barcode
    Boolean? remove
    Boolean? dry_run
    String? json
    Boolean? ignore_db
  }
  command <<<
    gemBS merge-bams \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(sample_name) then ("--sample_name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(barcode) then ("--barcode " +  '"' + barcode + '"') else ""} \
      ~{true="--remove" false="" remove} \
      ~{true="--dry-run" false="" dry_run} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""} \
      ~{true="--ignore-db" false="" ignore_db}
  >>>
  parameter_meta {
    threads: "Number of threads, Default: 1"
    sample_name: "Sample to be merged"
    barcode: "Sample to be merged"
    remove: "Remove individual BAM files after merging."
    dry_run: "Output mapping commands without execution"
    json: "FILE      Output JSON file with details of pending commands"
    ignore_db: "Ignore database for --dry-run and --json commands"
  }
}