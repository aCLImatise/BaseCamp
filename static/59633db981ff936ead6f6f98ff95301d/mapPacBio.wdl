version 1.0

task MapPacBio.sh {
  input {
    String best
    String toss
    String random
    String all
    String orientation_dot
  }
  command <<<
    mapPacBio.sh \
      ~{best} \
      ~{toss} \
      ~{random} \
      ~{all} \
      ~{orientation_dot}
  >>>
  parameter_meta {
    best: "(use the first best site)"
    toss: "(consider unmapped)"
    random: "(select one top-scoring site randomly)"
    all: "(retain all top-scoring sites)"
    orientation_dot: "Set to false for long-mate-pair libraries."
  }
}