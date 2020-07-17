version 1.0

task MisoPack {
  input {
    String? pack
    String? view
  }
  command <<<
    miso_pack \
      ~{if defined(pack) then ("--pack " +  '"' + pack + '"') else ""} \
      ~{if defined(view) then ("--view " +  '"' + view + '"') else ""}
  >>>
  parameter_meta {
    pack: "Pack a MISO output containing dir(s). Takes as input a directory or a comma-separated set of directories that contain MISO output."
    view: "View a MISO database (.miso_db file)."
  }
}