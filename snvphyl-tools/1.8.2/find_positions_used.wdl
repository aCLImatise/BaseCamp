version 1.0

task FindPositionsUsed.pl {
  input {
    Boolean? tab
    Boolean? reference
  }
  command <<<
    find-positions-used.pl \
      ~{true="--tab" false="" tab} \
      ~{true="--reference" false="" reference}
  >>>
  parameter_meta {
    tab: ": Print in tab-deliminted format"
    reference: ":  Reference fasta file."
  }
}