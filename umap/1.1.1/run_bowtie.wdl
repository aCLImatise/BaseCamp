version 1.0

task RunBowtie.py {
  input {
    Boolean? bis_map
    String? var_id
    String? job_id
    String km_er_dir
    String bowtie_dir
    String index_dir
    String index_name
  }
  command <<<
    run_bowtie.py \
      ~{km_er_dir} \
      ~{bowtie_dir} \
      ~{index_dir} \
      ~{index_name} \
      ~{true="-Bismap" false="" bis_map} \
      ~{if defined(var_id) then ("-var_id " +  '"' + var_id + '"') else ""} \
      ~{if defined(job_id) then ("-job_id " +  '"' + job_id + '"') else ""}
  >>>
  parameter_meta {
    bis_map: "Run bowtie with --norc"
    var_id: "HPC environmental variable for JOB ID"
    job_id: "1-based index for selecting a k-mer file"
    km_er_dir: "Directory containing the .kmer files"
    bowtie_dir: "Directory containing bowtie executable"
    index_dir: "Directory containing bowtie index"
    index_name: "prefix name of bowtie index"
  }
}