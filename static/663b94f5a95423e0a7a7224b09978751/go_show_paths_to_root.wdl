version 1.0

task GoShowPathsToRoot.pl {
  input {
    String eE
    String pP
  }
  command <<<
    go-show-paths-to-root.pl \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}