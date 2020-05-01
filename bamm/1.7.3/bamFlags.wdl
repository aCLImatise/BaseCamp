version 1.0

task BamFlags {
  input {
    String? flagsFlags
  }
  command <<<
    bamFlags \
      ~{flagsFlags}
  >>>
}