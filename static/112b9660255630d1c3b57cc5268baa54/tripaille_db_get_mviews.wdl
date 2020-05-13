version 1.0

task TripailleDbGetMviews {
  input {
    String nameName
  }
  command <<<
    tripaille db get_mviews \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""}
  >>>
}