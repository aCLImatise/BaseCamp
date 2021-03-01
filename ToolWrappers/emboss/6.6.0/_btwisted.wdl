version 1.0

task Btwisted {
  input {
    Boolean? angle_data
    File energydata_datafile_pair
  }
  command <<<
    _btwisted \
      ~{energydata_datafile_pair} \
      ~{if (angle_data) then "-angledata" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    angle_data: "datafile   [Eangles.dat] DNA base pair twist angle data"
    energydata_datafile_pair: "-energydata         datafile   [Eenergy.dat] DNA base pair stacking"
  }
  output {
    File out_stdout = stdout()
  }
}