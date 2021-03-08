version 1.0

task MmseqsConvertmsa {
  input {
    Int? identifier_field
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs convertmsa \
      ~{if defined(identifier_field) then ("--identifier-field " +  '"' + identifier_field + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    identifier_field: "Field from STOCKHOLM comments for choosing the MSA identifier: 0: ID, 1: AC. If the respective comment does not exist, the name of the first sequence will become the identifier [1]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}