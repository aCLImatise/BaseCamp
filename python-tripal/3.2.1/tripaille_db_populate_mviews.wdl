version 1.0

task TripailleDbPopulateMviews {
  input {
    String nameName
    Boolean noNoWait
  }
  command <<<
    tripaille db populate_mviews \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}