version 1.0

task Pal2nal.pl {
  input {
    Boolean? clustalpamlfastacodon_output_format
    Boolean? block_only
    Boolean? no_gap
    Boolean? no_mismatch
    Boolean? codon_table
    Boolean? html
    Boolean? no_stderr
    String universal_code_default
    String vertebrate_mitochondrial_code
    String yeast_mitochondrial_code
    String mold_protozoan_code
    String invertebrate_mitochondrial
    String ciliate_dasycladacean_hexamita
    String echinoderm_flatworm_mitochondrial
    String euplotid_nuclear_code
    String bacterial_archaeal_code
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
    pal2nal.pl \
      ~{universal_code_default} \
      ~{vertebrate_mitochondrial_code} \
      ~{yeast_mitochondrial_code} \
      ~{mold_protozoan_code} \
      ~{invertebrate_mitochondrial} \
      ~{ciliate_dasycladacean_hexamita} \
      ~{echinoderm_flatworm_mitochondrial} \
      ~{euplotid_nuclear_code} \
      ~{bacterial_archaeal_code} \
      ~{alternative_yeast_nuclear} \
      ~{ascidian_mitochondrial_code} \
      ~{alternative_flatworm_mitochondrial} \
      ~{blepharisma_nuclear_code} \
      ~{chlorophycean_mitochondrial_code} \
      ~{trematode_mitochondrial_code} \
      ~{scenedesmus_obliquus_code} \
      ~{thraustochytrium_mitochondrial_code} \
      ~{true="-output" false="" clustalpamlfastacodon_output_format} \
      ~{true="-blockonly" false="" block_only} \
      ~{true="-nogap" false="" no_gap} \
      ~{true="-nomismatch" false="" no_mismatch} \
      ~{true="-codontable" false="" codon_table} \
      ~{true="-html" false="" html} \
      ~{true="-nostderr" false="" no_stderr}
  >>>
  parameter_meta {
    clustalpamlfastacodon_output_format: "(clustal|paml|fasta|codon) Output format; default = clustal"
    block_only: "Show only user specified blocks '#' under CLUSTAL alignment (see example)"
    no_gap: "remove columns with gaps and inframe stop codons"
    no_mismatch: "remove mismatched codons (mismatch between pep and cDNA) from the output"
    codon_table: "N"
    html: "HTML output (only for the web server)"
    no_stderr: "No STDERR messages (only for the web server)"
    universal_code_default: "Universal code (default)"
    vertebrate_mitochondrial_code: "Vertebrate mitochondrial code"
    yeast_mitochondrial_code: "Yeast mitochondrial code"
    mold_protozoan_code: "Mold, Protozoan, and Coelenterate Mitochondrial code and Mycoplasma/Spiroplasma code"
    invertebrate_mitochondrial: "Invertebrate mitochondrial"
    ciliate_dasycladacean_hexamita: "Ciliate, Dasycladacean and Hexamita nuclear code"
    echinoderm_flatworm_mitochondrial: "Echinoderm and Flatworm mitochondrial code"
    euplotid_nuclear_code: "Euplotid nuclear code"
    bacterial_archaeal_code: "Bacterial, archaeal and plant plastid code"
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