version 1.0

task Kidc {
  input {
    Boolean? force
    Boolean? source
    String? strip_dest_dir
    File? file_dot_dot_dot
  }
  command <<<
    kidc \
      ~{file_dot_dot_dot} \
      ~{true="--force" false="" force} \
      ~{true="--source" false="" source} \
      ~{if defined(strip_dest_dir) then ("--strip-dest-dir " +  '"' + strip_dest_dir + '"') else ""}
  >>>
  parameter_meta {
    force: "Force compilation even if .pyc file already exists."
    source: "Generate .py source files along with .pyc files. This is sometimes useful for debugging."
    strip_dest_dir: "Strips the supplied path from the beginning of source filenames stored for error messages in the generated .pyc files"
    file_dot_dot_dot: ""
  }
}