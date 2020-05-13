version 1.0

task Fsnviz {
  input {
    File outOutDir
    String baseBaseName
    Boolean karyotypeKaryotype
    File circoCircoSConf
    Boolean pngPng
    Boolean svgSvg
    File karyotypeKaryotypeFile
    String circoCircoSExe
  }
  command <<<
    fsnviz \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(baseBaseName) then ("--base-name " +  '"' + baseBaseName + '"') else ""} \
      ~{true="--karyotype" false="" karyotypeKaryotype} \
      ~{if defined(circoCircoSConf) then ("--circos-conf " +  '"' + circoCircoSConf + '"') else ""} \
      ~{true="--png" false="" pngPng} \
      ~{true="--svg" false="" svgSvg} \
      ~{if defined(karyotypeKaryotypeFile) then ("--karyotype-file " +  '"' + karyotypeKaryotypeFile + '"') else ""} \
      ~{if defined(circoCircoSExe) then ("--circos-exe " +  '"' + circoCircoSExe + '"') else ""}
  >>>
}