version 1.0

task VerifyIDintensity {
  input {
    Float? threshold
    Int? marker
    Int? number
    File? abf
    File? stat
    File? in
    Boolean? verbose
    Boolean? per_sample
    String? var_string
  }
  command <<<
    verifyIDintensity \
      ~{var_string} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(marker) then ("--marker " +  '"' + marker + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(abf) then ("--abf " +  '"' + abf + '"') else ""} \
      ~{if defined(stat) then ("--stat " +  '"' + stat + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (per_sample) then "--persample" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/verifyidintensity:0.0.1--h176a8bc_0"
  }
  parameter_meta {
    threshold: "Minimum allele frequency for likelihood estimation, default is 0.01"
    marker: "(required)  Number of markers"
    number: "(required)  Number of samples"
    abf: "Allele frequency file (ABF), which is a plain text file with SNP_ID\\nand Allele_B frequency"
    stat: "Statistics file (created if not exist)"
    in: "(required)  Input intensity (.adpc.bin) file"
    verbose: "Turn on verbose mode"
    per_sample: "Do per-sample analysis, default is per-marker analysis"
    var_string: ""
  }
  output {
    File out_stdout = stdout()
  }
}