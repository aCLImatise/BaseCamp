version 1.0

task RiboScan {
  input {
    Directory? output_directory_default
    String? kingdom
    Float? id_thresh
    File? barr_nap_exe
    String? name
    Int? min_length
    File? verbosity
    File cores_cores_cores
  }
  command <<<
    ribo scan \
      ~{cores_cores_cores} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(kingdom) then ("--kingdom " +  '"' + kingdom + '"') else ""} \
      ~{if defined(id_thresh) then ("--id_thresh " +  '"' + id_thresh + '"') else ""} \
      ~{if defined(barr_nap_exe) then ("--barrnap_exe " +  '"' + barr_nap_exe + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_directory_default: "output directory; default: /"
    kingdom: "whether to look for eukaryotic, archaeal, or bacterial\\nrDNA; default: bac"
    id_thresh: "partial rRNA hits below this threshold will be\\nignored. default: 0.5"
    barr_nap_exe: "path to barrnap executable; default: barrnap"
    name: "name to give the contig files; default: infered from"
    min_length: "skip the scaffold if its shorter than this default: 0"
    verbosity: "Logger writes debug to file in output dir; this sets\\nverbosity level sent to stderr. 1 = debug(), 2 =\\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\\ndefault: 2"
    cores_cores_cores: "-c CORES, --cores CORES"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
    File out_verbosity = "${in_verbosity}"
  }
}