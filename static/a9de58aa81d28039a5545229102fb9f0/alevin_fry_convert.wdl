version 1.0

task AlevinfryConvert {
  input {
    File? bam
    File? output_rad_file
    Int? threads
  }
  command <<<
    alevin_fry convert \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(output_rad_file) then ("--output " +  '"' + output_rad_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0"
  }
  parameter_meta {
    bam: "input SAM/BAM file"
    output_rad_file: "output RAD file"
    threads: "number of threads to use for processing [default: 2]"
  }
  output {
    File out_stdout = stdout()
    File out_output_rad_file = "${in_output_rad_file}"
  }
}