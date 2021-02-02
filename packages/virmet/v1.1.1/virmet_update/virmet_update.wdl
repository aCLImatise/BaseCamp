version 1.0

task VirmetUpdate {
  input {
    String? viral
    Boolean? bact
    Boolean? fungal
    File? picked
    String vir_met
    String var_command
    String update
  }
  command <<<
    virmet update \
      ~{vir_met} \
      ~{var_command} \
      ~{update} \
      ~{if defined(viral) then ("--viral " +  '"' + viral + '"') else ""} \
      ~{if (bact) then "--bact" else ""} \
      ~{if (fungal) then "--fungal" else ""} \
      ~{if defined(picked) then ("--picked " +  '"' + picked + '"') else ""}
  >>>
  parameter_meta {
    viral: "update viral [n]ucleic/[p]rotein"
    bact: "update bacterial database"
    fungal: "update fungal database"
    picked: "file with additional sequences, one GI per line"
    vir_met: ""
    var_command: ""
    update: ""
  }
  output {
    File out_stdout = stdout()
  }
}