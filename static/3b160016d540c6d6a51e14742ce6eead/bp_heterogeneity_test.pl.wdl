version 1.0

task BpHeterogeneityTestpl {
  input {
    String? sample_size
    String? mut_non
    String? iterations
    String? observed
    String? method
    String? verbose
    Boolean? silent
    Boolean? precision
    String description
    String options
  }
  command <<<
    bp_heterogeneity_test_pl \
      ~{description} \
      ~{options} \
      ~{if defined(sample_size) then ("--samplesize " +  '"' + sample_size + '"') else ""} \
      ~{if defined(mut_non) then ("--mutnon " +  '"' + mut_non + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(observed) then ("--observed " +  '"' + observed + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (precision) then "--precision" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sample_size: "mutation count"
    mut_non: "mutation count"
    iterations: "of iterations"
    observed: "observed D"
    method: "tajimaD or fuD  for Tajima's D or Fu and Li's D"
    verbose: "print out extra verbose messages"
    silent: "Be extra quiet"
    precision: "Level of precision - specify the number of digits\\n(default 4)"
    description: "This is an implementation of the Heterogenetity test as described in\\nHahn MW, Rausher MD, and Cunningham CW. 2002. Genetics 161(1):11-20."
    options: "Options in brackets above are optional"
  }
  output {
    File out_stdout = stdout()
  }
}