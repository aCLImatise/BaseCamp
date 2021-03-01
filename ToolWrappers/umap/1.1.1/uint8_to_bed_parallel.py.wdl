version 1.0

task Uint8ToBedParallelpy {
  input {
    Boolean? c_two_t
    Boolean? g_two_a
    Array[String] chr_size_path
    Boolean? write_unique
    Boolean? wiggle
    Boolean? bed
    Boolean? km_ers
    String? job_id
    String? var_id
    String in_dir
    String out_dir
    String out_label
  }
  command <<<
    uint8_to_bed_parallel_py \
      ~{in_dir} \
      ~{out_dir} \
      ~{out_label} \
      ~{if (c_two_t) then "-C2T" else ""} \
      ~{if (g_two_a) then "-G2A" else ""} \
      ~{if defined(chr_size_path) then ("-chrsize_path " +  '"' + chr_size_path + '"') else ""} \
      ~{if (write_unique) then "-WriteUnique" else ""} \
      ~{if (wiggle) then "-wiggle" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (km_ers) then "-kmers" else ""} \
      ~{if defined(job_id) then ("-job_id " +  '"' + job_id + '"') else ""} \
      ~{if defined(var_id) then ("-var_id " +  '"' + var_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    c_two_t: "If using converted genomes specify -C2T or -G2A"
    g_two_a: "If using converted genomes specify -C2T or -G2A"
    chr_size_path: "/../chrsize.tsv from out_dir"
    write_unique: "If -Bismap is true and want to store the merged uint\\nfile, specify this option"
    wiggle: "If specified, will generate wiggle files for each\\nchromosome. Make sure to specify -job_id or run in job\\narray for parallel computation."
    bed: "If specified, will generate bed files that specify all\\nof the regions in the genome that are uniquely\\nmappable by each of the k-mers"
    km_ers: "[KMERS [KMERS ...]]\\nSpecify kmers separated by space such as: -kmers k10\\nk20"
    job_id: "If not using job array, specify this index which will\\nbe used for selecting the chromosomes"
    var_id: "Environmental variable for finding chromosome indices"
    in_dir: "folder with <chrom>.uint8.unique.gz files"
    out_dir: "Folder for writing the output files"
    out_label: "File names would be kmer.<out_label>.bed.gz"
  }
  output {
    File out_stdout = stdout()
  }
}