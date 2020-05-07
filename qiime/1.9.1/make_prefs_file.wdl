version 1.0

task MakePrefsFile.py {
  input {
    String mapMapFname
    String outputOutputFp
  }
  command <<<
    make_prefs_file.py \
      ~{if defined(mapMapFname) then ("--map_fname " +  '"' + mapMapFname + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}