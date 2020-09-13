version 1.0

task Ctenergy {
  input {
    Boolean? na
    Int? temperature
    String? suffix
    Boolean? sodium
    Boolean? magnesium
    Boolean? polymer
    Boolean? verbose
    Boolean? logarithmic
    Boolean? no_dangle
    Boolean? simple
    Boolean? vienna
    Boolean? coaxial
    File? file
  }
  command <<<
    ct_energy \
      ~{file} \
      ~{if (na) then "--NA" else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if (sodium) then "--sodium" else ""} \
      ~{if (magnesium) then "--magnesium" else ""} \
      ~{if (polymer) then "--polymer" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (logarithmic) then "--logarithmic" else ""} \
      ~{if (no_dangle) then "--nodangle" else ""} \
      ~{if (simple) then "--simple" else ""} \
      ~{if (vienna) then "--Vienna" else ""} \
      ~{if (coaxial) then "--coaxial" else ""}
  >>>
  parameter_meta {
    na: "=(RNA | DNA) (defaults to RNA)"
    temperature: "(defaults to 37)"
    suffix: "(overrides temperature)"
    sodium: "=<[Na+] in M> (defaults to 1)"
    magnesium: "=<[Mg++] in M> (defaults to 0)"
    polymer: ""
    verbose: ""
    logarithmic: ""
    no_dangle: ""
    simple: ""
    vienna: ""
    coaxial: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}