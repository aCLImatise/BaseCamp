version 1.0

task MakeEmperor.py {
  input {
    String inputInputCoords
    String mapMapFp
  }
  command <<<
    make_emperor.py \
      ~{if defined(inputInputCoords) then ("--input_coords " +  '"' + inputInputCoords + '"') else ""} \
      ~{if defined(mapMapFp) then ("--map_fp " +  '"' + mapMapFp + '"') else ""}
  >>>
}