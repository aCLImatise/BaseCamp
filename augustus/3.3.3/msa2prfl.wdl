version 1.0

task Msa2prfl.pl {
  input {
    Boolean? relax
    String? block_score_file
    String? setname
    String? set_desc
    String? set_acc
    String? info
    String msa
  }
  command <<<
    msa2prfl.pl \
      ~{msa} \
      ~{true="--relax" false="" relax} \
      ~{if defined(block_score_file) then ("--blockscorefile " +  '"' + block_score_file + '"') else ""} \
      ~{if defined(setname) then ("--setname " +  '"' + setname + '"') else ""} \
      ~{if defined(set_desc) then ("--setdesc " +  '"' + set_desc + '"') else ""} \
      ~{if defined(set_acc) then ("--setacc " +  '"' + set_acc + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""}
  >>>
  parameter_meta {
    relax: "consider MSA as partial (allow arbitrary distance at  beginning and end)"
    block_score_file: "create a log file with blocks from the MSA and their scores"
    setname: "set a name for the profile"
    set_desc: "set a description for the profile"
    set_acc: "set an accession id for the profile"
    info: "provide a text file containing the meta information"
    msa: ""
  }
}