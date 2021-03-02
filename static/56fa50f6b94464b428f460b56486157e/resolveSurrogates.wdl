version 1.0

task ResolveSurrogates {
  input {
    String? place_frags_surrogates
    Boolean? place_frags_equivalent
    Int? n
    String? c
    String? g
    String opts
  }
  command <<<
    resolveSurrogates \
      ~{opts} \
      ~{if defined(place_frags_surrogates) then ("-S " +  '"' + place_frags_surrogates + '"') else ""} \
      ~{if (place_frags_equivalent) then "-1" else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    place_frags_surrogates: "place all frags in singly-placed surrogates if\\nat least fraction x can be placed."
    place_frags_equivalent: "place all frags in singly-placed surrogates\\naggressively; equivalent to -S 0.0\\n"
    n: ""
    c: ""
    g: ""
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}