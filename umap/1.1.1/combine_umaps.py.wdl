version 1.0

task CombineUmapspy {
  input {
    String? out_dir
    Int? job_id
    String? chr_size_path_dot
    String? var_id
    Int? km_er_dir_two
    String km_er_dir
    String chr_size_path
  }
  command <<<
    combine_umaps_py \
      ~{km_er_dir} \
      ~{chr_size_path} \
      ~{if defined(out_dir) then ("-out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(job_id) then ("-job_id " +  '"' + job_id + '"') else ""} \
      ~{if defined(chr_size_path_dot) then ("-chrsize_path. " +  '"' + chr_size_path_dot + '"') else ""} \
      ~{if defined(var_id) then ("-var_id " +  '"' + var_id + '"') else ""} \
      ~{if defined(km_er_dir_two) then ("-kmer_dir_2 " +  '"' + km_er_dir_two + '"') else ""}
  >>>
  parameter_meta {
    out_dir: "If not specified, a subfolder will be created in\\nkmer_dir names as\\nglobalmap_k<smallestkmer>tok<largestkmer>"
    job_id: "1-based index for finding chromosome from"
    chr_size_path_dot: "not specified, it will user -var_id"
    var_id: "If -job_id is not specified, job_id will be inferred\\nfrom environmental variable -var_id."
    km_er_dir_two: "Specify to merge kmers of two different directories by\\nlogical operation AND.\\n"
    km_er_dir: "Directory with subfolders named as k<read length>)"
    chr_size_path: "Path to 2 column tsv file with first column as\\nchromosome and second column as its size. Will be used\\nto identify order of the chromosomes."
  }
  output {
    File out_stdout = stdout()
  }
}