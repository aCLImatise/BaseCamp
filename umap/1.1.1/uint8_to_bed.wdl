version 1.0

task Uint8ToBed.py {
  input {
    Boolean? c_two_t
    Boolean? g_two_a
    Array[String] chr_size_path
    Boolean? write_unique
    Boolean? wiggle
    Boolean? bed_graph
    Boolean? bed
    Boolean? km_ers
    String? job_id
    String? var_id
    String in_dir
    String out_dir
    String out_label
  }
  command <<<
    uint8_to_bed.py \
      ~{in_dir} \
      ~{out_dir} \
      ~{out_label} \
      ~{true="-C2T" false="" c_two_t} \
      ~{true="-G2A" false="" g_two_a} \
      ~{if defined(chr_size_path) then ("-chrsize_path " +  '"' + chr_size_path + '"') else ""} \
      ~{true="-WriteUnique" false="" write_unique} \
      ~{true="-wiggle" false="" wiggle} \
      ~{true="-bedGraph" false="" bed_graph} \
      ~{true="-bed" false="" bed} \
      ~{true="-kmers" false="" km_ers} \
      ~{if defined(job_id) then ("-job_id " +  '"' + job_id + '"') else ""} \
      ~{if defined(var_id) then ("-var_id " +  '"' + var_id + '"') else ""}
  >>>
  parameter_meta {
    c_two_t: "If using converted genomes specify -C2T or -G2A"
    g_two_a: "If using converted genomes specify -C2T or -G2A"
    chr_size_path: "/../chrsize.tsv from out_dir"
    write_unique: "If -Bismap is true and want to store the merged uint file, specify this option"
    wiggle: "If specified, will generate wiggle files for each chromosome. Make sure to specify -job_id or run in job array for parallel computation."
    bed_graph: "If specified, will generate one bedGraph file for each chromosome. Make sure to specify -job_id or run in job array for parallel computation."
    bed: "If specified, will generate bed files that specify all of the regions in the genome that are uniquely mappable by each of the k-mers"
    km_ers: "[KMERS [KMERS ...]] Specify kmers separated by space such as: -kmers k10 k20"
    job_id: "If not using job array, specify this index which will be used for selecting the chromosomes"
    var_id: "Environmental variable for finding chromosome indices"
    in_dir: "folder with <chrom>.uint8.unique.gz files"
    out_dir: "Folder for writing the output files"
    out_label: "File names would be kmer.<out_label>.bed.gz"
  }
}