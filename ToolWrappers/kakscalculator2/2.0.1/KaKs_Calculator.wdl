version 1.0

task KaKsCalculator {
  input {
    Boolean? axt_file_name
    File? output_file_name
    Boolean? genetic_code_table
    Boolean? methods_referencesdefault_ma
    String ng
    String lwl
    String lpb
    String ml_wl
    String mlp_b
    String gy
    String yn
    String my_n
    String ms
    String ma
    String gng
    String glw_l
    String glp_b
    String gml_wl
    String gml_pb
    String gyn
    String gm_yn
  }
  command <<<
    KaKs_Calculator \
      ~{ng} \
      ~{lwl} \
      ~{lpb} \
      ~{ml_wl} \
      ~{mlp_b} \
      ~{gy} \
      ~{yn} \
      ~{my_n} \
      ~{ms} \
      ~{ma} \
      ~{gng} \
      ~{glw_l} \
      ~{glp_b} \
      ~{gml_wl} \
      ~{gml_pb} \
      ~{gyn} \
      ~{gm_yn} \
      ~{if (axt_file_name) then "-i" else ""} \
      ~{if (output_file_name) then "-o" else ""} \
      ~{if (genetic_code_table) then "-c" else ""} \
      ~{if (methods_referencesdefault_ma) then "-m" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kakscalculator2:2.0.1--hc9558a2_0"
  }
  parameter_meta {
    axt_file_name: "Axt file name for calculating Ka & Ks."
    output_file_name: "Output file name for saving results."
    genetic_code_table: "Genetic code table (Default = 1-Standard Code).\\n1-Standard Code                         2-Vertebrate Mitochondrial Code\\n3-Yeast Mitochondrial Code                      4-Mold Mitochondrial Code\\n5-Invertebrate Mitochondrial Code                       6-Ciliate, Dasycladacean and Hexamita Code\\n9-Echinoderm and Flatworm Mitochondrial Code                    10-Euplotid Nuclear Code\\n11-Bacterial and Plant Plastid Code                     12-Alternative Yeast Nuclear Code\\n13-Ascidian Mitochondrial Code                          14-Alternative Flatworm Mitochondrial Code\\n15-Blepharisma Nuclear Code                     16-Chlorophycean Mitochondrial Code\\n21-Trematode Mitochondrial Code                         22-Scenedesmus obliquus mitochondrial Code\\n23-Thraustochytrium Mitochondrial Code\\n(More information about the Genetic Codes: http://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi?mode=c)"
    methods_referencesdefault_ma: "Methods for estimating Ka and Ks and theirs references(Default = MA)"
    ng: "Nei, M. and Gojobori, T. (1986) Mol. Biol. Evol., 3, 418-426."
    lwl: "Li, W.H., Wu, C.I. and Luo, C.C. (1985) Mol. Biol. Evol., 2, 150-174."
    lpb: "Li, W.H. (1993) J. Mol. Evol., 36, 96-99.    Pamilo, P. and Bianchi, N.O. (1993) Mol. Biol. Evol., 10, 271-281."
    ml_wl: "Tzeng, Y.H., Pan, R. and Li, W.H. (2004) Mol. Biol. Evol., 21, 2290-2298."
    mlp_b: "Tzeng, Y.H., Pan, R. and Li, W.H. (2004) Mol. Biol. Evol., 21, 2290-2298."
    gy: "Goldman, N. and Yang, Z. (1994) Mol. Biol. Evol., 11, 725-736."
    yn: "Yang, Z. and Nielsen, R. (2000) Mol. Biol. Evol., 17, 32-43."
    my_n: "Zhang, Z., Li, J. and Yu, J. (2006) BMC Evolutionary Biology, 6, 44."
    ms: "Model Selection according to the AICc"
    ma: "Model Averaging on a set of candidate models"
    gng: "Wang, DP., Zhang, S., He, FH., Zhu, J.,Hu, SN. and Yu, J.(2009) Genomics, Proteomics and Bioinformatics. In press."
    glw_l: "Wang, DP., Zhang, S., He, FH., Zhu, J.,Hu, SN. and Yu, J.(2009) Genomics, Proteomics and Bioinformatics. In press."
    glp_b: "Wang, DP., Zhang, S., He, FH., Zhu, J.,Hu, SN. and Yu, J.(2009) Genomics, Proteomics and Bioinformatics. In press."
    gml_wl: "Wang, DP., Zhang, S., He, FH., Zhu, J.,Hu, SN. and Yu, J.(2009) Genomics, Proteomics and Bioinformatics. In press."
    gml_pb: "Wang, DP., Zhang, S., He, FH., Zhu, J.,Hu, SN. and Yu, J.(2009) Genomics, Proteomics and Bioinformatics. In press."
    gyn: "Wang, DP., Zhang, S., He, FH., Zhu, J.,Hu, SN. and Yu, J.(2009) Genomics, Proteomics and Bioinformatics. In press."
    gm_yn: "Wang, DP., Wan, HL., Zhang, S. and Yu, J. (2009) Biology Direct, 4:20 (16 June 2009)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}