version 1.0

task PATHOGISTDistanceOutputPath {
  input {
    String? bed
    File pathog_ist
    String distance
  }
  command <<<
    PATHOGIST distance output_path \
      ~{pathog_ist} \
      ~{distance} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""}
  >>>
  parameter_meta {
    bed: ""
    pathog_ist: ""
    distance: ""
  }
}