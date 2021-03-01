version 1.0

task Smaca {
  input {
    Boolean? profile
    File? output_file
    Int? n_cpus
    Boolean? reference
    String bam_list_dot_dot_dot
  }
  command <<<
    smaca \
      ~{bam_list_dot_dot_dot} \
      ~{if (profile) then "--profile" else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(n_cpus) then ("--ncpus " +  '"' + n_cpus + '"') else ""} \
      ~{if (reference) then "--reference" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smaca:1.2.3--py37h0498b6d_1"
  }
  parameter_meta {
    profile: "execution statistics (only for debug purposes)"
    output_file: "output file"
    n_cpus: "number of cores to use"
    reference: "[hg19|hg38]  reference genome that was used for alignment"
    bam_list_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}