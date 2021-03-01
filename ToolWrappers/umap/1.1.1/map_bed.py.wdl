version 1.0

task MapBedpy {
  input {
    String? wig_dir
    Boolean? single_nucleotide
    String bed_path
    String out_path
    String u_map_dir
    String km_er
    String mapp_ability_dot
  }
  command <<<
    map_bed_py \
      ~{bed_path} \
      ~{out_path} \
      ~{u_map_dir} \
      ~{km_er} \
      ~{mapp_ability_dot} \
      ~{if defined(wig_dir) then ("-wigdir " +  '"' + wig_dir + '"') else ""} \
      ~{if (single_nucleotide) then "-SingleNucleotide" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    wig_dir: "use a faster algorithm."
    single_nucleotide: "If specified, assumes each region is only one nucleotide.\\nYou must specify -wig as well."
    bed_path: "Path to gzipped bed file"
    out_path: "Path to gzipped output file"
    u_map_dir: "Path to directory with uint8 binary files produced by\\nUmap/Bismap."
    km_er: "The read length for defining single-read and multi-read"
    mapp_ability_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}