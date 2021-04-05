version 1.0

task Eutilsconfig {
  input {
    Boolean? prefix
    Boolean? libs
    Boolean? cxxflags
  }
  command <<<
    eutils_config \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (libs) then "--libs" else ""} \
      ~{if (cxxflags) then "--cxxflags" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mapseq:1.2.6--h8dc0705_0"
  }
  parameter_meta {
    prefix: "show EUTILS installation prefix"
    libs: "print library linking information"
    cxxflags: "print pre-processor and compiler flags"
  }
  output {
    File out_stdout = stdout()
  }
}