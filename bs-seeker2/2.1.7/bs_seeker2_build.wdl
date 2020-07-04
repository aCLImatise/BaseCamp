version 1.0

task BsSeeker2Build.py {
  input {
    Boolean? rrbs
    String? low
    String? up
    String? cut_site
  }
  command <<<
    bs_seeker2-build.py \
      ~{true="--rrbs" false="" rrbs} \
      ~{if defined(low) then ("--low " +  '"' + low + '"') else ""} \
      ~{if defined(up) then ("--up " +  '"' + up + '"') else ""} \
      ~{if defined(cut_site) then ("--cut-site " +  '"' + cut_site + '"') else ""}
  >>>
  parameter_meta {
    rrbs: "Build index specially for Reduced Representation Bisulfite Sequencing experiments. Genome other than certain fragments will be masked. [Default: False]"
    low: "lower bound of fragment length (excluding recognition sequence such as C-CGG) [Default: 20]"
    up: "upper bound of fragment length (excluding recognition sequence such as C-CGG ends) [Default: 500]"
    cut_site: "Cut sites of restriction enzyme. Ex: MspI(C-CGG), Mael:(C-TAG), double-enzyme MspI&Mael:(C-CGG,C-TAG). [Default: C-CGG]"
  }
}