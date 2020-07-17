version 1.0

task Gdalbuildvrt {
  input {
    String? tile_index
  }
  command <<<
    gdalbuildvrt \
      ~{if defined(tile_index) then ("-tileindex " +  '"' + tile_index + '"') else ""}
  >>>
  parameter_meta {
    tile_index: ""
  }
}