version 1.0

task Sibelia {
  input {
    String sibel_i_a
  }
  command <<<
    Sibelia \
      ~{sibel_i_a}
  >>>
  parameter_meta {
    sibel_i_a: "{-s <loose|fine|far>|-k <file name>} [-o <dir name>] [--noblocks] [-r] [-a] [-m <integer>] [-q] [-g] [-v] [-t <dir name>] [--lastk <integer > 1>] [--allstages] [--gff] [--nopostprocess] [--correctboundaries] [-i <integer > 0>] [--] [--version] [-h] <fasta files with genomes> ..."
  }
}