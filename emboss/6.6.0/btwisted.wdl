version 1.0

task Btwisted {
  input {
    Boolean? angle_data
    File file
  }
  command <<<
    btwisted \
      ~{file} \
      ~{if (angle_data) then "-angledata" else ""}
  >>>
  parameter_meta {
    angle_data: "datafile   [Eangles.dat] DNA base pair twist angle data"
    file: "-energydata         datafile   [Eenergy.dat] DNA base pair stacking"
  }
  output {
    File out_stdout = stdout()
  }
}