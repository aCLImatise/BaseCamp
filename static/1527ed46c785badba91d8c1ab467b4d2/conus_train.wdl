version 1.0

task ConusTrain {
  input {
    Boolean? options
    String nus
    String una
    String run
    String ivo
    String bjk
    String yr_n
    String u_yn
    String ry_three
    String bk_two
  }
  command <<<
    conus_train \
      ~{nus} \
      ~{una} \
      ~{run} \
      ~{ivo} \
      ~{bjk} \
      ~{yr_n} \
      ~{u_yn} \
      ~{ry_three} \
      ~{bk_two} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    nus: "Ambiguous Simple Grammar (G1) "
    una: "Another Unambiguous (G3) "
    run: "Little Unambiguous (G4) "
    ivo: "Simplest Unambiguous (G5) "
    bjk: "Pfold grammar (G6) "
    yr_n: "Stacking grammar (G2) "
    u_yn: "Stacking analog of UNA (G7)"
    ry_three: "Stacking analog of RUN (G8)"
    bk_two: "Stacking parameterization of BJK (G6S)"
  }
}