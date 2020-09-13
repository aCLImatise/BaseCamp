version 1.0

task Filtersilvash {
  input {
    Boolean? x_mx
    Boolean? da
    String in
  }
  command <<<
    filtersilva_sh \
      ~{in} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\\nThe max is typically 85% of physical memory."
    da: "Disable assertions."
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}