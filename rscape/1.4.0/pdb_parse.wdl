version 1.0

task PdbParse.pl {
  input {
    String pdb_file
    String sto_file
    String rs_cape_bin
    String gnuplot_dir
  }
  command <<<
    pdb_parse.pl \
      ~{pdb_file} \
      ~{sto_file} \
      ~{rs_cape_bin} \
      ~{gnuplot_dir}
  >>>
  parameter_meta {
    pdb_file: ""
    sto_file: ""
    rs_cape_bin: ""
    gnuplot_dir: ""
  }
}