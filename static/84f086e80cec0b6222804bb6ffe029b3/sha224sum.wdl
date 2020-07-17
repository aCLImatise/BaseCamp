version 1.0

task Sha224sum {
  input {
    Boolean? binary
    Boolean? check
    Boolean? tag
    Boolean? text
    Boolean? ignore_missing
    Boolean? quiet
    Boolean? status
    Boolean? strict
    Boolean? warn
    String? option
  }
  command <<<
    sha224sum \
      ~{option} \
      ~{true="--binary" false="" binary} \
      ~{true="--check" false="" check} \
      ~{true="--tag" false="" tag} \
      ~{true="--text" false="" text} \
      ~{true="--ignore-missing" false="" ignore_missing} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--status" false="" status} \
      ~{true="--strict" false="" strict} \
      ~{true="--warn" false="" warn}
  >>>
  parameter_meta {
    binary: "read in binary mode"
    check: "read SHA224 sums from the FILEs and check them"
    tag: "create a BSD-style checksum"
    text: "read in text mode (default)"
    ignore_missing: "don't fail or report status for missing files"
    quiet: "don't print OK for each successfully verified file"
    status: "don't output anything, status code shows success"
    strict: "exit non-zero for improperly formatted checksum lines"
    warn: "warn about improperly formatted checksum lines"
    option: ""
  }
}