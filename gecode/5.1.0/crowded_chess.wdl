version 1.0

task CrowdedChess {
  input {
    String bkqbrkbb
  }
  command <<<
    crowded-chess \
      ~{bkqbrkbb}
  >>>
  parameter_meta {
    bkqbrkbb: "..Q.....        ....R...        B..B..BB        .K...K.."
  }
}