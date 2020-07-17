version 1.0

task Nglview {
  input {
    String? crd
    String? browser
    String? j_exe
    String? notebook_name
    String? port
    Boolean? remote
    Boolean? clean
    Boolean? auto
    Boolean? symlink
    String command_could_topology
    String t_raj
  }
  command <<<
    nglview \
      ~{command_could_topology} \
      ~{t_raj} \
      ~{if defined(crd) then ("--crd " +  '"' + crd + '"') else ""} \
      ~{if defined(browser) then ("--browser " +  '"' + browser + '"') else ""} \
      ~{if defined(j_exe) then ("--jexe " +  '"' + j_exe + '"') else ""} \
      ~{if defined(notebook_name) then ("--notebook-name " +  '"' + notebook_name + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{true="--remote" false="" remote} \
      ~{true="--clean" false="" clean} \
      ~{true="--auto" false="" auto} \
      ~{true="--symlink" false="" symlink}
  >>>
  parameter_meta {
    crd: "coordinate filename"
    browser: "web browser"
    j_exe: "jupyter path"
    notebook_name: "notebook name"
    port: "port number"
    remote: "create remote notebook"
    clean: "delete temp file after closing notebook"
    auto: "Run 1st cell right after openning notebook"
    symlink: "Create symlink for nglview-js-widgets (developer mode)"
    command_could_topology: "command could be a topology filename (.pdb, .mol2, .parm7, ...) or could be a python script (.py), a notebook (.ipynb). If not given, a notebook will be created with only nglview imported"
    t_raj: "coordinate filename, optional"
  }
}