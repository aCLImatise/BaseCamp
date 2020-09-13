version 1.0

task VirmetIndex {
  input {
    String? viral
    Boolean? human
    Boolean? bact
    Boolean? fungal
    Boolean? bovine
    String vir_met
    String var_command
    String index
  }
  command <<<
    virmet index \
      ~{vir_met} \
      ~{var_command} \
      ~{index} \
      ~{if defined(viral) then ("--viral " +  '"' + viral + '"') else ""} \
      ~{if (human) then "--human" else ""} \
      ~{if (bact) then "--bact" else ""} \
      ~{if (fungal) then "--fungal" else ""} \
      ~{if (bovine) then "--bovine" else ""}
  >>>
  parameter_meta {
    viral: "make blast index of viral database"
    human: "make bwa index of human database"
    bact: "make bwa index of bacterial database"
    fungal: "make bwa index of fungal database"
    bovine: "make bwa index of bovine database"
    vir_met: ""
    var_command: ""
    index: ""
  }
  output {
    File out_stdout = stdout()
  }
}