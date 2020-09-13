version 1.0

task Kidc {
  input {
    Boolean? force
    Boolean? source
    File? strip_dest_dir
    File? file_dot_dot_dot
  }
  command <<<
    kidc \
      ~{file_dot_dot_dot} \
      ~{if (force) then "--force" else ""} \
      ~{if (source) then "--source" else ""} \
      ~{if defined(strip_dest_dir) then ("--strip-dest-dir " +  '"' + strip_dest_dir + '"') else ""}
  >>>
  parameter_meta {
    force: "Force compilation even if .pyc file already exists."
    source: "Generate .py source files along with .pyc files.\\nThis is sometimes useful for debugging."
    strip_dest_dir: "Strips the supplied path from the beginning of source\\nfilenames stored for error messages in the generated\\n.pyc files"
    file_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}