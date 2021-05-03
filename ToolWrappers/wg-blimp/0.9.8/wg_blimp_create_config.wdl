version 1.0

task WgblimpCreateconfig {
  input {
    Boolean? genome_build
    Int? cores_per_job
    String fast_q_dir
    String reference_fast_a
    Int group_one
  }
  command <<<
    wg_blimp create_config \
      ~{fast_q_dir} \
      ~{reference_fast_a} \
      ~{group_one} \
      ~{if (genome_build) then "--genome_build" else ""} \
      ~{if defined(cores_per_job) then ("--cores-per-job " +  '"' + cores_per_job + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wg-blimp:0.9.8--pyh5e36f6f_0"
  }
  parameter_meta {
    genome_build: "[hg19|hg38|mmul10|None]\\nBuild of the reference used for annotation."
    cores_per_job: "The number of cores to use per job.\\n[required]"
    fast_q_dir: ""
    reference_fast_a: ""
    group_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}