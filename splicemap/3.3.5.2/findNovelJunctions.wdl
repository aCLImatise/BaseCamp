version 1.0

task FindNovelJunctions {
  input {
    String? orOr
  }
  command <<<
    findNovelJunctions \
      ~{orOr}
  >>>
}