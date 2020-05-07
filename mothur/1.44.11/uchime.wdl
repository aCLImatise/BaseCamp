version 1.0

task Uchime {
  input {
    Float xXA
    Float xXDropG
    Float xXDropNw
    Float xXDropU
    Float xXDropUg
    String xXFrame
    Boolean xlXlAt
    Float xnXn
  }
  command <<<
    uchime \
      ~{if defined(xXA) then ("--xa " +  '"' + xXA + '"') else ""} \
      ~{if defined(xXDropG) then ("--xdrop_g " +  '"' + xXDropG + '"') else ""} \
      ~{if defined(xXDropNw) then ("--xdrop_nw " +  '"' + xXDropNw + '"') else ""} \
      ~{if defined(xXDropU) then ("--xdrop_u " +  '"' + xXDropU + '"') else ""} \
      ~{if defined(xXDropUg) then ("--xdrop_ug " +  '"' + xXDropUg + '"') else ""} \
      ~{if defined(xXFrame) then ("--xframe " +  '"' + xXFrame + '"') else ""} \
      ~{true="--xlat" false="" xlXlAt} \
      ~{if defined(xnXn) then ("--xn " +  '"' + xnXn + '"') else ""}
  >>>
}