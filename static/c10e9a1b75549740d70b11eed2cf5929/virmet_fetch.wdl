version 1.0

task VirmetFetch {
  input {
    String? viral
    Boolean? human
    Boolean? bact
    Boolean? fungal
    Boolean? bovine
    String vir_met
    String var_command
    String fetch
  }
  command <<<
    virmet fetch \
      ~{vir_met} \
      ~{var_command} \
      ~{fetch} \
      ~{if defined(viral) then ("--viral " +  '"' + viral + '"') else ""} \
      ~{if (human) then "--human" else ""} \
      ~{if (bact) then "--bact" else ""} \
      ~{if (fungal) then "--fungal" else ""} \
      ~{if (bovine) then "--bovine" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    viral: "viral [nucleic acids/proteins]"
    human: "human"
    bact: "bacterial (RefSeq)"
    fungal: "fungal (RefSeq)"
    bovine: "bovine (Bos taurus)"
    vir_met: ""
    var_command: ""
    fetch: ""
  }
  output {
    File out_stdout = stdout()
  }
}