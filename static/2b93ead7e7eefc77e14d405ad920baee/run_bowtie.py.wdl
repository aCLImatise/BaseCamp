version 1.0

task RunBowtiepy {
  input {
    Boolean? bis_map
    String? var_id
    File? job_id
    String km_er_dir
    String bowtie_dir
    String index_dir
    String index_name
  }
  command <<<
    run_bowtie_py \
      ~{km_er_dir} \
      ~{bowtie_dir} \
      ~{index_dir} \
      ~{index_name} \
      ~{if (bis_map) then "-Bismap" else ""} \
      ~{if defined(var_id) then ("-var_id " +  '"' + var_id + '"') else ""} \
      ~{if defined(job_id) then ("-job_id " +  '"' + job_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bis_map: "Run bowtie with --norc"
    var_id: "HPC environmental variable for JOB ID"
    job_id: "1-based index for selecting a k-mer file"
    km_er_dir: "Directory containing the .kmer files"
    bowtie_dir: "Directory containing bowtie executable"
    index_dir: "Directory containing bowtie index"
    index_name: "prefix name of bowtie index"
  }
  output {
    File out_stdout = stdout()
  }
}