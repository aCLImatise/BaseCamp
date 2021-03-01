version 1.0

task Sha384sum {
  input {
    Boolean? binary
    Boolean? check
    Boolean? tag
    Boolean? text
    File? end_output_line
    Boolean? ignore_missing
    Boolean? quiet
    Boolean? status
    Boolean? strict
    Boolean? warn
  }
  command <<<
    sha384sum \
      ~{if (binary) then "--binary" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if (tag) then "--tag" else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (end_output_line) then "--zero" else ""} \
      ~{if (ignore_missing) then "--ignore-missing" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (status) then "--status" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (warn) then "--warn" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    binary: "read in binary mode"
    check: "read SHA384 sums from the FILEs and check them"
    tag: "create a BSD-style checksum"
    text: "read in text mode (default)"
    end_output_line: "end each output line with NUL, not newline,\\nand disable file name escaping"
    ignore_missing: "don't fail or report status for missing files"
    quiet: "don't print OK for each successfully verified file"
    status: "don't output anything, status code shows success"
    strict: "exit non-zero for improperly formatted checksum lines"
    warn: "warn about improperly formatted checksum lines"
  }
  output {
    File out_stdout = stdout()
    File out_end_output_line = "${in_end_output_line}"
  }
}