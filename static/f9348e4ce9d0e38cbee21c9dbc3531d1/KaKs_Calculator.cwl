class: CommandLineTool
id: KaKs_Calculator.cwl
inputs:
- id: in_axt_file_name
  doc: Axt file name for calculating Ka & Ks.
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output_file_name
  doc: Output file name for saving results.
  type: File?
  inputBinding:
    prefix: -o
- id: in_genetic_code_table
  doc: "Genetic code table (Default = 1-Standard Code).\n1-Standard Code         \
    \                2-Vertebrate Mitochondrial Code\n3-Yeast Mitochondrial Code \
    \                     4-Mold Mitochondrial Code\n5-Invertebrate Mitochondrial\
    \ Code                       6-Ciliate, Dasycladacean and Hexamita Code\n9-Echinoderm\
    \ and Flatworm Mitochondrial Code                    10-Euplotid Nuclear Code\n\
    11-Bacterial and Plant Plastid Code                     12-Alternative Yeast Nuclear\
    \ Code\n13-Ascidian Mitochondrial Code                          14-Alternative\
    \ Flatworm Mitochondrial Code\n15-Blepharisma Nuclear Code                   \
    \  16-Chlorophycean Mitochondrial Code\n21-Trematode Mitochondrial Code      \
    \                   22-Scenedesmus obliquus mitochondrial Code\n23-Thraustochytrium\
    \ Mitochondrial Code\n(More information about the Genetic Codes: http://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi?mode=c)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_methods_referencesdefault_ma
  doc: Methods for estimating Ka and Ks and theirs references(Default = MA)
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_ng
  doc: Nei, M. and Gojobori, T. (1986) Mol. Biol. Evol., 3, 418-426.
  type: string
  inputBinding:
    position: 0
- id: in_lwl
  doc: Li, W.H., Wu, C.I. and Luo, C.C. (1985) Mol. Biol. Evol., 2, 150-174.
  type: string
  inputBinding:
    position: 1
- id: in_lpb
  doc: Li, W.H. (1993) J. Mol. Evol., 36, 96-99.    Pamilo, P. and Bianchi, N.O. (1993)
    Mol. Biol. Evol., 10, 271-281.
  type: string
  inputBinding:
    position: 2
- id: in_ml_wl
  doc: Tzeng, Y.H., Pan, R. and Li, W.H. (2004) Mol. Biol. Evol., 21, 2290-2298.
  type: string
  inputBinding:
    position: 3
- id: in_mlp_b
  doc: Tzeng, Y.H., Pan, R. and Li, W.H. (2004) Mol. Biol. Evol., 21, 2290-2298.
  type: string
  inputBinding:
    position: 4
- id: in_gy
  doc: Goldman, N. and Yang, Z. (1994) Mol. Biol. Evol., 11, 725-736.
  type: string
  inputBinding:
    position: 5
- id: in_yn
  doc: Yang, Z. and Nielsen, R. (2000) Mol. Biol. Evol., 17, 32-43.
  type: string
  inputBinding:
    position: 6
- id: in_my_n
  doc: Zhang, Z., Li, J. and Yu, J. (2006) BMC Evolutionary Biology, 6, 44.
  type: string
  inputBinding:
    position: 7
- id: in_ms
  doc: Model Selection according to the AICc
  type: string
  inputBinding:
    position: 8
- id: in_ma
  doc: Model Averaging on a set of candidate models
  type: string
  inputBinding:
    position: 9
- id: in_gng
  doc: Wang, DP., Zhang, S., He, FH., Zhu, J.,Hu, SN. and Yu, J.(2009) Genomics, Proteomics
    and Bioinformatics. In press.
  type: string
  inputBinding:
    position: 10
- id: in_glw_l
  doc: Wang, DP., Zhang, S., He, FH., Zhu, J.,Hu, SN. and Yu, J.(2009) Genomics, Proteomics
    and Bioinformatics. In press.
  type: string
  inputBinding:
    position: 11
- id: in_glp_b
  doc: Wang, DP., Zhang, S., He, FH., Zhu, J.,Hu, SN. and Yu, J.(2009) Genomics, Proteomics
    and Bioinformatics. In press.
  type: string
  inputBinding:
    position: 12
- id: in_gml_wl
  doc: Wang, DP., Zhang, S., He, FH., Zhu, J.,Hu, SN. and Yu, J.(2009) Genomics, Proteomics
    and Bioinformatics. In press.
  type: string
  inputBinding:
    position: 13
- id: in_gml_pb
  doc: Wang, DP., Zhang, S., He, FH., Zhu, J.,Hu, SN. and Yu, J.(2009) Genomics, Proteomics
    and Bioinformatics. In press.
  type: string
  inputBinding:
    position: 14
- id: in_gyn
  doc: Wang, DP., Zhang, S., He, FH., Zhu, J.,Hu, SN. and Yu, J.(2009) Genomics, Proteomics
    and Bioinformatics. In press.
  type: string
  inputBinding:
    position: 15
- id: in_gm_yn
  doc: Wang, DP., Wan, HL., Zhang, S. and Yu, J. (2009) Biology Direct, 4:20 (16 June
    2009)
  type: string
  inputBinding:
    position: 16
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: Output file name for saving results.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kakscalculator2:2.0.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- KaKs_Calculator
