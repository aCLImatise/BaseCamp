version 1.0

task RNARedPrint {
  input {
    String? num
    Boolean? count
    Boolean? prefix
  }
  command <<<
    RNARedPrint \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{true="--count" false="" count} \
      ~{true="--prefix" false="" prefix}
  >>>
  parameter_meta {
    num: "- Sets number of generated sequences (default 10)"
    count: "- Simply compute the partition function and report the result."
    prefix: "- Prefix path for locating the TD libraries"
  }
}