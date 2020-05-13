version 1.0

task BaitFilter {
  input {
    String? baitBaitFilter
  }
  command <<<
    BaitFilter \
      ~{baitBaitFilter}
  >>>
}