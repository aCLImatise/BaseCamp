version 1.0

task Nglview {
  input {
    File? crd
    String? browser
    File? j_exe
    String? notebook_name
    Int? port
    Boolean? remote
    Boolean? clean
    Boolean? auto
    Boolean? symlink
    String command_be_filename
    String t_raj
  }
  command <<<
    nglview \
      ~{command_be_filename} \
      ~{t_raj} \
      ~{if defined(crd) then ("--crd " +  '"' + crd + '"') else ""} \
      ~{if defined(browser) then ("--browser " +  '"' + browser + '"') else ""} \
      ~{if defined(j_exe) then ("--jexe " +  '"' + j_exe + '"') else ""} \
      ~{if defined(notebook_name) then ("--notebook-name " +  '"' + notebook_name + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (remote) then "--remote" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if (auto) then "--auto" else ""} \
      ~{if (symlink) then "--symlink" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    command_be_filename: "command could be a topology filename (.pdb, .mol2,\\n.parm7, ...) or could be a python script (.py), a\\nnotebook (.ipynb). If not given, a notebook will be\\ncreated with only nglview imported"
    t_raj: "coordinate filename, optional"
  }
  output {
    File out_stdout = stdout()
  }
}