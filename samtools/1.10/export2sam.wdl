version 1.0

task Export2sam.pl {
  input {
    File readRead1
    File readRead2
    Boolean noNoFilter
    Boolean qQLogOdds
  }
  command <<<
    export2sam.pl \
      ~{if defined(readRead1) then ("--read1 " +  '"' + readRead1 + '"') else ""} \
      ~{if defined(readRead2) then ("--read2 " +  '"' + readRead2 + '"') else ""} \
      ~{true="--nofilter" false="" noNoFilter} \
      ~{true="--qlogodds" false="" qQLogOdds}
  >>>
}