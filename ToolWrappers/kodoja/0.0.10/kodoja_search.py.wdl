version 1.0

task KodojaSearchpy {
  input {
    File? output_dir
    File? kraken_db
    File? kaiju_db
    Int? read_one
    Int? read_two
    String? data_format
    Int? threads
    String? host_subset
    Int? trim_min_len
    File? trim_adapt
    Int? kraken_quick
    Boolean? kraken_preload
    String? kaiju_score
    Int? kaiju_min_len
    String? kaiju_mismatch
  }
  command <<<
    kodoja_search_py \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(kraken_db) then ("--kraken_db " +  '"' + kraken_db + '"') else ""} \
      ~{if defined(kaiju_db) then ("--kaiju_db " +  '"' + kaiju_db + '"') else ""} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(data_format) then ("--data_format " +  '"' + data_format + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(host_subset) then ("--host_subset " +  '"' + host_subset + '"') else ""} \
      ~{if defined(trim_min_len) then ("--trim_minlen " +  '"' + trim_min_len + '"') else ""} \
      ~{if defined(trim_adapt) then ("--trim_adapt " +  '"' + trim_adapt + '"') else ""} \
      ~{if defined(kraken_quick) then ("--kraken_quick " +  '"' + kraken_quick + '"') else ""} \
      ~{if (kraken_preload) then "--kraken_preload" else ""} \
      ~{if defined(kaiju_score) then ("--kaiju_score " +  '"' + kaiju_score + '"') else ""} \
      ~{if defined(kaiju_min_len) then ("--kaiju_minlen " +  '"' + kaiju_min_len + '"') else ""} \
      ~{if defined(kaiju_mismatch) then ("--kaiju_mismatch " +  '"' + kaiju_mismatch + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "Output directory path, required"
    kraken_db: "Kraken database path, required"
    kaiju_db: "Kaiju database path, required"
    read_one: "Read 1 file path, required"
    read_two: "Read 2 file path"
    data_format: "Sequence data format (default fastq)"
    threads: "Number of threads (default 1)"
    host_subset: "Subset sequences with this tax id from results"
    trim_min_len: "Trimmomatic minimum length"
    trim_adapt: "Illumina adapter sequence file"
    kraken_quick: "Number of minium hits by Kraken"
    kraken_preload: "Kraken preload database"
    kaiju_score: "Kaju alignment score"
    kaiju_min_len: "Kaju minimum length"
    kaiju_mismatch: "Kaju allowed mismatches"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}