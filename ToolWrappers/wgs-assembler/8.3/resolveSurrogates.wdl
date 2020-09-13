version 1.0

task ResolveSurrogates {
  input {
    String? place_frags_ifat
    Boolean? place_frags_singlyplaced
    Int? n
    String? c
    String? g
    String opts
  }
  command <<<
    resolveSurrogates \
      ~{opts} \
      ~{if defined(place_frags_ifat) then ("-S " +  '"' + place_frags_ifat + '"') else ""} \
      ~{if (place_frags_singlyplaced) then "-1" else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    place_frags_ifat: "place all frags in singly-placed surrogates if\\nat least fraction x can be placed."
    place_frags_singlyplaced: "place all frags in singly-placed surrogates\\naggressively; equivalent to -S 0.0\\n"
    n: ""
    c: ""
    g: ""
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}