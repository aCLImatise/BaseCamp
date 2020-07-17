version 1.0

task Mglroundtrip {
  input {
    String round_trip
    File file_one
    File file_two
  }
  command <<<
    mglroundtrip \
      ~{round_trip} \
      ~{file_one} \
      ~{file_two}
  >>>
  parameter_meta {
    round_trip: ""
    file_one: ""
    file_two: ""
  }
}