version 1.0

task Pepwheel {
  input {
    Boolean? steps
    Boolean? turns
  }
  command <<<
    pepwheel \
      ~{true="-steps" false="" steps} \
      ~{true="-turns" false="" turns}
  >>>
  parameter_meta {
    steps: "integer    [18] The number of residues plotted per turn is this value divided by the 'turns' value. (Integer from 2 to 100)"
    turns: "integer    [5] The number of residues plotted per turn is the 'steps' value divided by this value. (Integer from 1 to 100)"
  }
}