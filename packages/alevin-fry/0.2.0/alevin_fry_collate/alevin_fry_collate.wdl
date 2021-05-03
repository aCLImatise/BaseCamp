version 1.0

task AlevinfryCollate {
  input {
    Directory? input_dir
    Int? max_records
    File? rad_dir
    Int? threads
  }
  command <<<
    alevin_fry collate \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(max_records) then ("--max-records " +  '"' + max_records + '"') else ""} \
      ~{if defined(rad_dir) then ("--rad-dir " +  '"' + rad_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0"
  }
  parameter_meta {
    input_dir: "input directory made by generate-permit-list"
    max_records: "the maximum number of read records to keep in memory at once\\n[default: 30000000]"
    rad_dir: "the directory containing the RAD file to be collated"
    threads: "number of threads to use for processing [default: 2]"
  }
  output {
    File out_stdout = stdout()
  }
}