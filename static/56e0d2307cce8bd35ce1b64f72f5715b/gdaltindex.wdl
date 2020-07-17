version 1.0

task Gdaltindex {
  input {
    String? tile_index
    Boolean? write_absolute_path
  }
  command <<<
    gdaltindex \
      ~{if defined(tile_index) then ("-tileindex " +  '"' + tile_index + '"') else ""} \
      ~{true="-write_absolute_path" false="" write_absolute_path}
  >>>
  parameter_meta {
    tile_index: ""
    write_absolute_path: ""
  }
}