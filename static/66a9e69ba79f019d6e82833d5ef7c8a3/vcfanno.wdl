version 1.0

task Vcfanno {
  input {
    String baseBasePath
    Boolean endsEnds
    String luaLua
    Int pP
    Boolean permissivePermissiveOverlap
  }
  command <<<
    vcfanno \
      ~{if defined(baseBasePath) then ("-base-path " +  '"' + baseBasePath + '"') else ""} \
      ~{true="-ends" false="" endsEnds} \
      ~{if defined(luaLua) then ("-lua " +  '"' + luaLua + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-permissive-overlap" false="" permissivePermissiveOverlap}
  >>>
}