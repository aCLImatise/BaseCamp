version 1.0

task MisoPack {
  input {
    Directory? pack
    File? view
  }
  command <<<
    miso_pack \
      ~{if defined(pack) then ("--pack " +  '"' + pack + '"') else ""} \
      ~{if defined(view) then ("--view " +  '"' + view + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pack: "Pack a MISO output containing dir(s). Takes as input a\\ndirectory or a comma-separated set of directories that contain\\nMISO output."
    view: "View a MISO database (.miso_db file)."
  }
  output {
    File out_stdout = stdout()
  }
}