version 1.0

task MmseqsConvert2fasta {
  input {
    Boolean? use_header_file
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs convert2fasta \
      ~{if defined(use_header_file) then ("--use-header-file " +  '"' + use_header_file + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    use_header_file: "use the sequence header DB instead of the body to map the entry keys [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}