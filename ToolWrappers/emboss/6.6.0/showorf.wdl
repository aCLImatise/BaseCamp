version 1.0

task Showorf {
  input {
    Boolean? frames
    Boolean? table
    Boolean? width
  }
  command <<<
    showorf \
      ~{if (frames) then "-frames" else ""} \
      ~{if (table) then "-table" else ""} \
      ~{if (width) then "-width" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    frames: "menu       [1,2,3,4,5,6] Select one or more values\\n(Values: 0 (None); 1 (F1); 2 (F2); 3 (F3); 4\\n(R1); 5 (R2); 6 (R3))"
    table: "menu       [0] Genetic code to use (Values: 0\\n(Standard); 1 (Standard (with alternative\\ninitiation codons)); 2 (Vertebrate\\nMitochondrial); 3 (Yeast Mitochondrial); 4\\n(Mold, Protozoan, Coelenterate Mitochondrial\\nand Mycoplasma/Spiroplasma); 5\\n(Invertebrate Mitochondrial); 6 (Ciliate\\nMacronuclear and Dasycladacean); 9\\n(Echinoderm Mitochondrial); 10 (Euplotid\\nNuclear); 11 (Bacterial); 12 (Alternative\\nYeast Nuclear); 13 (Ascidian Mitochondrial);\\n14 (Flatworm Mitochondrial); 15\\n(Blepharisma Macronuclear); 16\\n(Chlorophycean Mitochondrial); 21 (Trematode\\nMitochondrial); 22 (Scenedesmus obliquus);\\n23 (Thraustochytrium Mitochondrial))"
    width: "integer    [50] Width of screen (Integer 10 or more)"
  }
  output {
    File out_stdout = stdout()
  }
}