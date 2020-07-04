version 1.0

task Pgcgap {
  input {
    String universal_code
    String vertebrate_mitochondrial_code
    String yeast_mitochondrial_code
    String mold_protozoan_code
    String invertebrate_mitochondrial
    String ciliate_dasycladacean_hexamita
    String echinoderm_flatworm_mitochondrial
    String euplotid_nuclear_code
    String bacterial_archaeal_plant
    String alternative_yeast_nuclear
    String ascidian_mitochondrial_code
    String alternative_flatworm_mitochondrial
    String blepharisma_nuclear_code
    String chlorophycean_mitochondrial_code
    String trematode_mitochondrial_code
    String scenedesmus_obliquus_code
    String thraustochytrium_mitochondrial_code
  }
  command <<<
    pgcgap \
      ~{universal_code} \
      ~{vertebrate_mitochondrial_code} \
      ~{yeast_mitochondrial_code} \
      ~{mold_protozoan_code} \
      ~{invertebrate_mitochondrial} \
      ~{ciliate_dasycladacean_hexamita} \
      ~{echinoderm_flatworm_mitochondrial} \
      ~{euplotid_nuclear_code} \
      ~{bacterial_archaeal_plant} \
      ~{alternative_yeast_nuclear} \
      ~{ascidian_mitochondrial_code} \
      ~{alternative_flatworm_mitochondrial} \
      ~{blepharisma_nuclear_code} \
      ~{chlorophycean_mitochondrial_code} \
      ~{trematode_mitochondrial_code} \
      ~{scenedesmus_obliquus_code} \
      ~{thraustochytrium_mitochondrial_code}
  >>>
  parameter_meta {
    universal_code: "Universal code"
    vertebrate_mitochondrial_code: "Vertebrate mitochondrial code"
    yeast_mitochondrial_code: "Yeast mitochondrial code"
    mold_protozoan_code: "Mold, Protozoan, and Coelenterate Mitochondrial code and Mycoplasma/Spiroplasma code"
    invertebrate_mitochondrial: "Invertebrate mitochondrial"
    ciliate_dasycladacean_hexamita: "Ciliate, Dasycladacean and Hexamita nuclear code"
    echinoderm_flatworm_mitochondrial: "Echinoderm and Flatworm mitochondrial code"
    euplotid_nuclear_code: "Euplotid nuclear code"
    bacterial_archaeal_plant: "Bacterial, archaeal and plant plastid code ( Default )"
    alternative_yeast_nuclear: "Alternative yeast nuclear code"
    ascidian_mitochondrial_code: "Ascidian mitochondrial code"
    alternative_flatworm_mitochondrial: "Alternative flatworm mitochondrial code"
    blepharisma_nuclear_code: "Blepharisma nuclear code"
    chlorophycean_mitochondrial_code: "Chlorophycean mitochondrial code"
    trematode_mitochondrial_code: "Trematode mitochondrial code"
    scenedesmus_obliquus_code: "Scenedesmus obliquus mitochondrial code"
    thraustochytrium_mitochondrial_code: "Thraustochytrium mitochondrial code"
  }
}