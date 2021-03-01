version 1.0

task Pal2nalpl {
  input {
    Boolean? clustalpamlfastacodonoutput_format_default
    Boolean? block_only
    Boolean? no_gap
    Boolean? no_mismatch
    Boolean? codon_table
    Boolean? html
    Boolean? no_stderr
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
  }
  command <<<
    pal2nal_pl \
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
      ~{if (clustalpamlfastacodonoutput_format_default) then "-output" else ""} \
      ~{if (block_only) then "-blockonly" else ""} \
      ~{if (no_gap) then "-nogap" else ""} \
      ~{if (no_mismatch) then "-nomismatch" else ""} \
      ~{if (codon_table) then "-codontable" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (no_stderr) then "-nostderr" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    clustalpamlfastacodonoutput_format_default: "(clustal|paml|fasta|codon)\\nOutput format; default = clustal"
    block_only: "Show only user specified blocks\\n'#' under CLUSTAL alignment (see example)"
    no_gap: "remove columns with gaps and inframe stop codons"
    no_mismatch: "remove mismatched codons (mismatch between\\npep and cDNA) from the output"
    codon_table: "N\\n1  Universal code (default)\\n2  Vertebrate mitochondrial code\\n3  Yeast mitochondrial code\\n4  Mold, Protozoan, and Coelenterate Mitochondrial code\\nand Mycoplasma/Spiroplasma code\\n5  Invertebrate mitochondrial\\n6  Ciliate, Dasycladacean and Hexamita nuclear code\\n9  Echinoderm and Flatworm mitochondrial code"
    html: "HTML output (only for the web server)"
    no_stderr: "No STDERR messages (only for the web server)"
    euplotid_nuclear_code: "Euplotid nuclear code"
    bacterial_archaeal_plant: "Bacterial, archaeal and plant plastid code"
    alternative_yeast_nuclear: "Alternative yeast nuclear code"
    ascidian_mitochondrial_code: "Ascidian mitochondrial code"
    alternative_flatworm_mitochondrial: "Alternative flatworm mitochondrial code"
    blepharisma_nuclear_code: "Blepharisma nuclear code"
    chlorophycean_mitochondrial_code: "Chlorophycean mitochondrial code"
    trematode_mitochondrial_code: "Trematode mitochondrial code"
    scenedesmus_obliquus_code: "Scenedesmus obliquus mitochondrial code"
    thraustochytrium_mitochondrial_code: "Thraustochytrium mitochondrial code"
  }
  output {
    File out_stdout = stdout()
  }
}