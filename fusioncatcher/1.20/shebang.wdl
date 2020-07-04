version 1.0

task Shebang.py {
  input {
    File? path
    String? shebang
    String? author
  }
  command <<<
    shebang.py \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(shebang) then ("--shebang " +  '"' + shebang + '"') else ""} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""}
  >>>
  parameter_meta {
    path: "The path where are FusionCatcher's Python scripts."
    shebang: "The new shebang for Python scripts belonging to FusionCatcher."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
  }
}