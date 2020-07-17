version 1.0

task GetKmers.py {
  input {
    String? km_er
    String? job_id
    String? var_id
    String chrom_size_path
    String out_dir
    String chr_dir
    String idx_path
  }
  command <<<
    get_kmers.py \
      ~{chrom_size_path} \
      ~{out_dir} \
      ~{chr_dir} \
      ~{idx_path} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(job_id) then ("--job_id " +  '"' + job_id + '"') else ""} \
      ~{if defined(var_id) then ("--var_id " +  '"' + var_id + '"') else ""}
  >>>
  parameter_meta {
    km_er: "The software would infer it based on the name of the 'out_dir'. If it is set and contradicts the 'out_dir', a subfolder under out_dir will be created named 'kmer' and out_dir will be changed to that."
    job_id: "If not submitted in job array, would require this parameter to be set. (1-based index)"
    var_id: "The variable name that the script would use for identifying the job id. By default: SGE_TASK_ID."
    chrom_size_path: "Path to 2 column tsv file where first column is chromosome name and second column is chromosome size"
    out_dir: "Path to the directory for creating <chromosome>.<Megabase>.<kmer>.kmer.gz files"
    chr_dir: "Path to directory with <chromosome>.fasta files."
    idx_path: "Path to the 4 column file with the following columns: Index | Chromosome | Start | End. This file will be used for identifying the chunk of the chromosome."
  }
}