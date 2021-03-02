version 1.0

task AquilaUmap {
  input {
    Directory? fa_folder
    File? fa_name
    File? out_dir
    Int? chr_start
    Int? chr_end
    Int? km_er_len
    Int? mapq_th_res
    Int? chr_thread
    Int? bowtie_thread
    String use
  }
  command <<<
    aquila_umap \
      ~{use} \
      ~{if defined(fa_folder) then ("--fa_folder " +  '"' + fa_folder + '"') else ""} \
      ~{if defined(fa_name) then ("--fa_name " +  '"' + fa_name + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(chr_start) then ("--chr_start " +  '"' + chr_start + '"') else ""} \
      ~{if defined(chr_end) then ("--chr_end " +  '"' + chr_end + '"') else ""} \
      ~{if defined(km_er_len) then ("--kmer_len " +  '"' + km_er_len + '"') else ""} \
      ~{if defined(mapq_th_res) then ("--mapq_thres " +  '"' + mapq_th_res + '"') else ""} \
      ~{if defined(chr_thread) then ("--chr_thread " +  '"' + chr_thread + '"') else ""} \
      ~{if defined(bowtie_thread) then ("--bowtie_thread " +  '"' + bowtie_thread + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fa_folder: "Required parameter; The folder path where fasta files\\nare saved eg: /path/to/fasta/"
    fa_name: "Required parameter; The file name of fasta file eg:\\nsample.fa"
    out_dir: "Required parameter; The output path eg:\\n/path/to/result/"
    chr_start: "chromosome start by,default = 1"
    chr_end: "chromosome end by,default = 23"
    km_er_len: "The length of generated kmers,default = 100"
    mapq_th_res: "The MAPQ threshold to filter bowtie2 map result,\\ndefault = 20"
    chr_thread: "number of threads for processing chromosome, default =\\n2"
    bowtie_thread: "number of threads for bowtie2 mapping, default = 10\\n"
    use: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_dir = "${in_out_dir}"
  }
}