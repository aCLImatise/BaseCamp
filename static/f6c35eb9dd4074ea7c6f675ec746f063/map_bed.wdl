version 1.0

task MapBed.py {
  input {
    Boolean? single_nucleotide
    String? wig_dir
    String bed_path
    String out_path
    String u_map_dir
    String km_er
  }
  command <<<
    map_bed.py \
      ~{bed_path} \
      ~{out_path} \
      ~{u_map_dir} \
      ~{km_er} \
      ~{true="-SingleNucleotide" false="" single_nucleotide} \
      ~{if defined(wig_dir) then ("-wigdir " +  '"' + wig_dir + '"') else ""}
  >>>
  parameter_meta {
    single_nucleotide: "If specified, assumes each region is only one nucleotide. You must specify -wig as well."
    wig_dir: "Path to directory with <chrom>.<kmer>.MultiReadMappability.wg.gz files."
    bed_path: "Path to gzipped bed file"
    out_path: "Path to gzipped output file"
    u_map_dir: "Path to directory with uint8 binary files produced by Umap/Bismap."
    km_er: "The read length for defining single-read and multi-read mappability."
  }
}