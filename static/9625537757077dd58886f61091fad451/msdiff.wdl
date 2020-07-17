version 1.0

task Msdiff {
  input {
    Boolean? arg__set
    Boolean? ignore_metadata_compare
    File filename_one
    File filename_two
  }
  command <<<
    msdiff \
      ~{filename_one} \
      ~{filename_two} \
      ~{true="-p" false="" arg__set} \
      ~{true="-i" false="" ignore_metadata_compare}
  >>>
  parameter_meta {
    arg__set: "[ --precision ] arg (=9.9999999999999995e-07) : set floating point precision for  comparing binary data"
    ignore_metadata_compare: "[ --ignore ]                       : ignore metadata (compare scan binary  data and important scan metadata only)"
    filename_one: ""
    filename_two: ""
  }
}