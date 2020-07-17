version 1.0

task PpanggolinInfo {
  input {
    String? pan_genome
    Boolean? parameters
    Boolean? content
    Boolean? status
  }
  command <<<
    ppanggolin info \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{true="--parameters" false="" parameters} \
      ~{true="--content" false="" content} \
      ~{true="--status" false="" status}
  >>>
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    parameters: "Shows the parameters used (or computed) for each step of the pangenome generation (default: False)"
    content: "Shows detailled informations about the pangenome's content (default: False)"
    status: "Shows informations about the statuses of the different elements of the pangenome (what has been computed, or not) (default: False)"
  }
}