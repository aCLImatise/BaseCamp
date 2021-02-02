version 1.0

task MspVcf {
  input {
    String? ploidy
    String history_file
  }
  command <<<
    msp vcf \
      ~{history_file} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""}
  >>>
  parameter_meta {
    ploidy: "The ploidy level of samples\\n"
    history_file: "The msprime history file in HDF5 format"
  }
  output {
    File out_stdout = stdout()
  }
}