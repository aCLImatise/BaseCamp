version 1.0

task MisoPack {
  input {
    String packPack
    String viewView
  }
  command <<<
    miso_pack \
      ~{if defined(packPack) then ("--pack " +  '"' + packPack + '"') else ""} \
      ~{if defined(viewView) then ("--view " +  '"' + viewView + '"') else ""}
  >>>
}