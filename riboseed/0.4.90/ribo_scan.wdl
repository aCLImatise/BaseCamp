version 1.0

task RiboScan {
  input {
    String? output_directory_default
    String? kingdom
    String? id_thresh
    String? barr_nap_exe
    String? name
    String? cores
    Int? min_length
    String? verbosity
    String contigs
  }
  command <<<
    ribo scan \
      ~{contigs} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(kingdom) then ("--kingdom " +  '"' + kingdom + '"') else ""} \
      ~{if defined(id_thresh) then ("--id_thresh " +  '"' + id_thresh + '"') else ""} \
      ~{if defined(barr_nap_exe) then ("--barrnap_exe " +  '"' + barr_nap_exe + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    output_directory_default: "output directory; default: /tmp/tmpdvlbjbbn"
    kingdom: "whether to look for eukaryotic, archaeal, or bacterial rDNA; default: bac"
    id_thresh: "partial rRNA hits below this threshold will be ignored. default: 0.5"
    barr_nap_exe: "path to barrnap executable; default: barrnap"
    name: "name to give the contig files; default: infered from file"
    cores: "number of threads/cores to use; default: 2"
    min_length: "skip the scaffold if its shorter than this default: 0"
    verbosity: "Logger writes debug to file in output dir; this sets verbosity level sent to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default: 2"
    contigs: "either a (multi)fasta or a directory containing one or more chromosomal sequences in fasta format"
  }
}