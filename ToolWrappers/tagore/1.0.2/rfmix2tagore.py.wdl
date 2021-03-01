version 1.0

task Rfmix2tagorepy {
  input {
    File? chr_one
    File? chr_two
    String? afr
    String? eur
    String? nat
    String? unk
    File? out
  }
  command <<<
    rfmix2tagore_py \
      ~{if defined(chr_one) then ("--chr1 " +  '"' + chr_one + '"') else ""} \
      ~{if defined(chr_two) then ("--chr2 " +  '"' + chr_two + '"') else ""} \
      ~{if defined(afr) then ("--afr " +  '"' + afr + '"') else ""} \
      ~{if defined(eur) then ("--eur " +  '"' + eur + '"') else ""} \
      ~{if defined(nat) then ("--nat " +  '"' + nat + '"') else ""} \
      ~{if defined(unk) then ("--unk " +  '"' + unk + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chr_one: "Chromosome 1 RFMix painting"
    chr_two: "Chromosome 2 RFMix painting"
    afr: "Color for African blocks"
    eur: "Color for European blocks"
    nat: "Color for Native American / Asian blocks"
    unk: "Color for Unknown regions"
    out: "Output da Vinci bed"
  }
  output {
    File out_stdout = stdout()
  }
}