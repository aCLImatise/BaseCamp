version 1.0

task KssdDist {
  input {
    Boolean? by_read
    Int? correction
    Int? mut_dist_max
    File? skf
    Int? half_km_er_length
    Boolean? keep_co_file
    Boolean? keep_skf
    File? list
    Int? dim_rdc_level
    Int? max_memory
    Int? metric
    Int? lst_k_mero_crs
    Int? neighbor_n_max
    File? outdir
    Int? out_fields
    Int? thread_n
    String? pipe_cmd
    Int? quality
    File? reference_dir
    String? option_dot_dot_dot
    String? query
  }
  command <<<
    kssd dist \
      ~{option_dot_dot_dot} \
      ~{query} \
      ~{if (by_read) then "--byread" else ""} \
      ~{if defined(correction) then ("--correction " +  '"' + correction + '"') else ""} \
      ~{if defined(mut_dist_max) then ("--mutDist_max " +  '"' + mut_dist_max + '"') else ""} \
      ~{if defined(skf) then ("--skf " +  '"' + skf + '"') else ""} \
      ~{if defined(half_km_er_length) then ("--halfKmerlength " +  '"' + half_km_er_length + '"') else ""} \
      ~{if (keep_co_file) then "--keepcofile" else ""} \
      ~{if (keep_skf) then "--keepskf" else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(dim_rdc_level) then ("--DimRdcLevel " +  '"' + dim_rdc_level + '"') else ""} \
      ~{if defined(max_memory) then ("--maxMemory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{if defined(lst_k_mero_crs) then ("--LstKmerOcrs " +  '"' + lst_k_mero_crs + '"') else ""} \
      ~{if defined(neighbor_n_max) then ("--neighborN_max " +  '"' + neighbor_n_max + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_fields) then ("--outfields " +  '"' + out_fields + '"') else ""} \
      ~{if defined(thread_n) then ("--threadN " +  '"' + thread_n + '"') else ""} \
      ~{if defined(pipe_cmd) then ("--pipecmd " +  '"' + pipe_cmd + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(reference_dir) then ("--reference_dir " +  '"' + reference_dir + '"') else ""}
  >>>
  parameter_meta {
    by_read: "sketch the file by read[false]."
    correction: "perform correction for shared k-mer counts or not\\n.[0]"
    mut_dist_max: "max mutation allowed for distance output.[1]"
    skf: "share_kmer_ct file path."
    half_km_er_length: "set half Kmer length: 2-15 [8]"
    keep_co_file: "keep intermedia .co files."
    keep_skf: "turn on share_kmer_ct file keep mode.[false]"
    list: "a file contain paths for all query sequences"
    dim_rdc_level: "Dimension Reduction Level or provide .shuf\\nfile[2]"
    max_memory: "maximal memory (in G) usage allowed"
    metric: "output metrics: 0: Jaccard/1: Containment [0]"
    lst_k_mero_crs: "Specify the Least Kmer occurence in fastq file"
    neighbor_n_max: "max number of nearest reference genomes.[1]"
    outdir: "folder path for results files."
    out_fields: "output fields(latter includes former):\\nDistance/Q-values/Confidence Intervels.[2]"
    thread_n: "set threads number [all threads]"
    pipe_cmd: "pipe command."
    quality: "Filter Kmer with lowest base quality < q (Phred)"
    reference_dir: "reference genome/database search against."
    option_dot_dot_dot: ""
    query: ""
  }
  output {
    File out_stdout = stdout()
  }
}