version 1.0

task Pgcgap {
  input {
    Int? for_thresholds_
    String roar_y
    String families
    String genes
    Int euplotid_nuclear_code
    Int bacterial_archaeal_plant
    Int alternative_yeast_nuclear
    Int ascidian_mitochondrial_code
    Int alternative_flatworm_mitochondrial
    Int blepharisma_nuclear_code
    Int chlorophycean_mitochondrial_code
    Int trematode_mitochondrial_code
    Int scenedesmus_obliquus_code
    Int thraustochytrium_mitochondrial_code
    String programs
  }
  command <<<
    pgcgap \
      ~{roar_y} \
      ~{families} \
      ~{genes} \
      ~{euplotid_nuclear_code} \
      ~{bacterial_archaeal_plant} \
      ~{alternative_yeast_nuclear} \
      ~{ascidian_mitochondrial_code} \
      ~{alternative_flatworm_mitochondrial} \
      ~{blepharisma_nuclear_code} \
      ~{chlorophycean_mitochondrial_code} \
      ~{trematode_mitochondrial_code} \
      ~{scenedesmus_obliquus_code} \
      ~{thraustochytrium_mitochondrial_code} \
      ~{programs} \
      ~{if defined(for_thresholds_) then ("-n " +  '"' + for_thresholds_ + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgcgap:1.0.27--py37pl526_0"
  }
  parameter_meta {
    for_thresholds_: "for thresholds 0.5-0.6, -n 4 for"
    roar_y: "[--OrthoF]                    Identify orthologous protein sequence"
    families: "[--ANI]                       Compute whole-genome Average Nucleotide"
    genes: "[--STREE]                     Construct a phylogenetic tree based on"
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
    programs: "[--abyss-bin (PATH)]          Path to abyss binary file. Default tries\\nif abyss is in PATH;"
  }
  output {
    File out_stdout = stdout()
  }
}