version 1.0

task CombineUmaps.py {
  input {
    String? out_dir
    String? job_id
    String? var_id
    String? km_er_dir_two
    String km_er_dir
    String chr_size_path
  }
  command <<<
    combine_umaps.py \
      ~{km_er_dir} \
      ~{chr_size_path} \
      ~{if defined(out_dir) then ("-out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(job_id) then ("-job_id " +  '"' + job_id + '"') else ""} \
      ~{if defined(var_id) then ("-var_id " +  '"' + var_id + '"') else ""} \
      ~{if defined(km_er_dir_two) then ("-kmer_dir_2 " +  '"' + km_er_dir_two + '"') else ""}
  >>>
  parameter_meta {
    out_dir: "If not specified, a subfolder will be created in kmer_dir names as globalmap_k<smallestkmer>tok<largestkmer>"
    job_id: "1-based index for finding chromosome from -chrsize_path. If not specified, it will user -var_id to infer the chromosome for combining mappabilitiy of different kmers."
    var_id: "If -job_id is not specified, job_id will be inferred from environmental variable -var_id."
    km_er_dir_two: "Specify to merge kmers of two different directories by logical operation AND."
    km_er_dir: "Directory with subfolders named as k<read length>)"
    chr_size_path: "Path to 2 column tsv file with first column as chromosome and second column as its size. Will be used to identify order of the chromosomes."
  }
}