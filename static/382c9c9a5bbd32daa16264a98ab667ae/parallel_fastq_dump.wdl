version 1.0

task ParallelFastqDump {
  input {
    String? sra_id
    String? threads
    String? outdir
    String? tmpdir
    Int? min_spot_id
    Int? max_spot_id
  }
  command <<<
    parallel-fastq-dump \
      ~{if defined(sra_id) then ("--sra-id " +  '"' + sra_id + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(min_spot_id) then ("--minSpotId " +  '"' + min_spot_id + '"') else ""} \
      ~{if defined(max_spot_id) then ("--maxSpotId " +  '"' + max_spot_id + '"') else ""}
  >>>
  parameter_meta {
    sra_id: "SRA id"
    threads: "number of threads"
    outdir: "output directory"
    tmpdir: "temporary directory"
    min_spot_id: "Minimum spot id"
    max_spot_id: "Maximum spot id"
  }
}