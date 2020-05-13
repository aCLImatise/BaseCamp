version 1.0

task Reveal {
  input {
    String hH
    String? usageUsage
  }
  command <<<
    reveal \
      ~{usageUsage} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""}
  >>>
}