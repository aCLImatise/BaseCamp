version 1.0

task Jemalloc.sh {
  input {
    String? notNot
    String? foundFound
  }
  command <<<
    jemalloc.sh \
      ~{notNot} \
      ~{foundFound}
  >>>
}