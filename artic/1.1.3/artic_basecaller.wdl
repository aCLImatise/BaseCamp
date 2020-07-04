version 1.0

task ArticBasecaller {
  input {
    Boolean? quiet
    Directory directory
  }
  command <<<
    artic basecaller \
      ~{directory} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    directory: "Directory of FAST5 files."
  }
}