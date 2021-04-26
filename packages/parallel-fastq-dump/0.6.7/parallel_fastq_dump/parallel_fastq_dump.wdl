version 1.0

task Parallelfastqdump {
  input {
    String? sra_id
    Int? threads
    Directory? outdir
    Directory? tmpdir
    Int? min_spot_id
    Int? max_spot_id
  }
  command <<<
    parallel_fastq_dump \
      ~{if defined(sra_id) then ("--sra-id " +  '"' + sra_id + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(min_spot_id) then ("--minSpotId " +  '"' + min_spot_id + '"') else ""} \
      ~{if defined(max_spot_id) then ("--maxSpotId " +  '"' + max_spot_id + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/parallel-fastq-dump:0.6.7--pyhdfd78af_0"
  }
  parameter_meta {
    sra_id: "SRA id (default: None)"
    threads: "number of threads (default: 1)"
    outdir: "output directory (default: .)"
    tmpdir: "temporary directory (default: None)"
    min_spot_id: "Minimum spot id (default: 1)"
    max_spot_id: "Maximum spot id (default: None)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}