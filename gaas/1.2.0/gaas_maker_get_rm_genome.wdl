version 1.0

task GaasMakerGetRmGenome.pl {
  input {
    Boolean? path_none_assume
    Boolean? outfile
  }
  command <<<
    gaas_maker_get_rm_genome.pl \
      ~{true="-i" false="" path_none_assume} \
      ~{true="--outfile" false="" outfile}
  >>>
  parameter_meta {
    path_none_assume: "The path to the input directory. If none given, we assume that the script is launched where Maker was run. So, in that case the script will look for the folder *.maker.output."
    outfile: "The name of the masked genome file. By default, the name will genome.rm.fa"
  }
}