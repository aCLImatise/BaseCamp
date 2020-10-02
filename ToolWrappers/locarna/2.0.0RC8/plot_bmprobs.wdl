version 1.0

task Plotbmprobs {
  input {
    String? quiet
    String read
    String var_2
    String for
    String out
    String plot_bm_probs
    String probability
    String verbose
    String where
    String a
    String generating
    String in
    File in_file
    String script
    File file
    String is
    String requires
    String supposed
    String position
    String positions
    String statistic
    String to
    String with
    String base
    String contain
    String program
    String r
    String lines
    String match
    String second
    String first
    String of
    String prob_abilites
    String and
    String dimension
    String var_35
    String form
    String write
    String i
    String plot
    String var_as
    String j
    String ps
  }
  command <<<
    plot_bmprobs \
      ~{read} \
      ~{var_2} \
      ~{for} \
      ~{out} \
      ~{plot_bm_probs} \
      ~{probability} \
      ~{verbose} \
      ~{where} \
      ~{a} \
      ~{generating} \
      ~{in} \
      ~{in_file} \
      ~{script} \
      ~{file} \
      ~{is} \
      ~{requires} \
      ~{supposed} \
      ~{position} \
      ~{positions} \
      ~{statistic} \
      ~{to} \
      ~{with} \
      ~{base} \
      ~{contain} \
      ~{program} \
      ~{r} \
      ~{lines} \
      ~{match} \
      ~{second} \
      ~{first} \
      ~{of} \
      ~{prob_abilites} \
      ~{and} \
      ~{dimension} \
      ~{var_35} \
      ~{form} \
      ~{write} \
      ~{i} \
      ~{plot} \
      ~{var_as} \
      ~{j} \
      ~{ps} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""}
  >>>
  parameter_meta {
    quiet: ""
    read: ""
    var_2: ""
    for: ""
    out: ""
    plot_bm_probs: ""
    probability: ""
    verbose: ""
    where: ""
    a: ""
    generating: ""
    in: ""
    in_file: ""
    script: ""
    file: ""
    is: ""
    requires: ""
    supposed: ""
    position: ""
    positions: ""
    statistic: ""
    to: ""
    with: ""
    base: ""
    contain: ""
    program: ""
    r: ""
    lines: ""
    match: ""
    second: ""
    first: ""
    of: ""
    prob_abilites: ""
    and: ""
    dimension: ""
    var_35: ""
    form: ""
    write: ""
    i: ""
    plot: ""
    var_as: ""
    j: ""
    ps: ""
  }
  output {
    File out_stdout = stdout()
  }
}