version 1.0

task FindNovelJunctions {
  input {
    String or
  }
  command <<<
    findNovelJunctions \
      ~{or}
  >>>
  parameter_meta {
    or: "./findNovelJunction refFlat.bed junction.bed"
  }
  output {
    File out_stdout = stdout()
  }
}