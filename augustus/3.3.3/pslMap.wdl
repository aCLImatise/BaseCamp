version 1.0

task PslMap.pl {
  input {
    String? inIn
    String? mapMap
    String? outOut
    String? filterFilterUnspliced
    Int? minMinMatch
  }
  command <<<
    pslMap.pl \
      ~{inIn} \
      ~{mapMap} \
      ~{outOut} \
      ~{filterFilterUnspliced} \
      ~{minMinMatch}
  >>>
}