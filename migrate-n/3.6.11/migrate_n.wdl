version 1.0

task Migraten {
  input {
    Boolean? version
    Boolean? no_menu
    Boolean? menu
  }
  command <<<
    migrate_n \
      ~{if (version) then "-version" else ""} \
      ~{if (no_menu) then "-nomenu" else ""} \
      ~{if (menu) then "-menu" else ""}
  >>>
  parameter_meta {
    version: "# shows the current version and exits"
    no_menu: "# does not display menu, use this for batch jobs"
    menu: "# forces the display of the menu"
  }
  output {
    File out_stdout = stdout()
  }
}