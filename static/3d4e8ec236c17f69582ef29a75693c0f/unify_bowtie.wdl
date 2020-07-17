version 1.0

task UnifyBowtie.py {
  input {
    String? job_id
    String? var_id
    String bowtie_outdir
    String chr_size_path
  }
  command <<<
    unify_bowtie.py \
      ~{bowtie_outdir} \
      ~{chr_size_path} \
      ~{if defined(job_id) then ("-job_id " +  '"' + job_id + '"') else ""} \
      ~{if defined(var_id) then ("-var_id " +  '"' + var_id + '"') else ""}
  >>>
  parameter_meta {
    job_id: "If not using a cluster for submitting jobs, specify the job_id by integer ranging from 1 to total number of chromosomes in chrsize_path"
    var_id: "HPC variable name for job ID (1-based index)"
    bowtie_outdir: "Directory containing bowtie output files"
    chr_size_path: "A file containing the order of chromosome names to consider (one chromosome name per line)"
  }
}