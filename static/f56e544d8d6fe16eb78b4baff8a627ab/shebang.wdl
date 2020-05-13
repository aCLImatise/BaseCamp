version 1.0

task Shebang.py {
  input {
    File pathPath
    String shebangShebang
    String authorAuthor
  }
  command <<<
    shebang.py \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{if defined(shebangShebang) then ("--shebang " +  '"' + shebangShebang + '"') else ""} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""}
  >>>
}