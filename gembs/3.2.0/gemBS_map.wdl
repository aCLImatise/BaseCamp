version 1.0

task GemBSMap {
  input {
    String? dataset
    String? sample_name
    String? barcode
    File? tmp_dir
    String? threads
    String? type
    Boolean? paired_end
    Boolean? remove
    Boolean? read_non_stranded
    String? under_conversion_sequence
    String? over_conversion_sequence
    Boolean? non_bs
    Boolean? no_merge
    Boolean? dry_run
    String? json
    Boolean? ignore_db
  }
  command <<<
    gemBS map \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(barcode) then ("--barcode " +  '"' + barcode + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{true="--paired-end" false="" paired_end} \
      ~{true="--remove" false="" remove} \
      ~{true="--read-non-stranded" false="" read_non_stranded} \
      ~{if defined(under_conversion_sequence) then ("--underconversion-sequence " +  '"' + under_conversion_sequence + '"') else ""} \
      ~{if defined(over_conversion_sequence) then ("--overconversion-sequence " +  '"' + over_conversion_sequence + '"') else ""} \
      ~{true="--non-bs" false="" non_bs} \
      ~{true="--no-merge" false="" no_merge} \
      ~{true="--dry-run" false="" dry_run} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""} \
      ~{true="--ignore-db" false="" ignore_db}
  >>>
  parameter_meta {
    dataset: "Dataset to be mapped."
    sample_name: "Name of sample to be mapped."
    barcode: "Barcode of sample to be mapped."
    tmp_dir: "Temporary folder to perform sorting operations. Default: /tmp"
    threads: "Number of threads to perform sorting operations."
    type: "Type of data file (PAIRED, SINGLE, INTERLEAVED, STREAM, BAM)"
    paired_end: "Input data is Paired End"
    remove: "Remove individual BAM files after merging."
    read_non_stranded: "Automatically selects the proper C->T and G->A read conversions based on the level of Cs and Gs on the read."
    under_conversion_sequence: "Name of unmethylated sequencing control."
    over_conversion_sequence: "Name of methylated sequencing control."
    non_bs: "Use regular (non bisulfite) index"
    no_merge: "Do not automatically merge BAMs"
    dry_run: "Output mapping commands without execution"
    json: "FILE      Output JSON file with details of pending commands"
    ignore_db: "Ignore database for --dry-run and --json commands"
  }
}