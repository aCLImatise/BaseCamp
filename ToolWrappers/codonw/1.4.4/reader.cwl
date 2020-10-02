class: CommandLineTool
id: reader.cwl
inputs:
- id: in_no_menu
  doc: Prevent the menu interface being displayed
  type: boolean
  inputBinding:
    prefix: -nomenu
- id: in_nowarn
  doc: Prevent warnings about sequences being displayed
  type: boolean
  inputBinding:
    prefix: -nowarn
- id: in_silent
  doc: Overwrite files silently
  type: boolean
  inputBinding:
    prefix: -silent
- id: in_totals
  doc: Concatenate all genes in inputfile
  type: boolean
  inputBinding:
    prefix: -totals
- id: in_machine
  doc: Machine readable output
  type: boolean
  inputBinding:
    prefix: -machine
- id: in_human
  doc: Human readable output
  type: boolean
  inputBinding:
    prefix: -human
- id: in_code
  doc: Genetic code as defined under menu 3 option 5
  type: long
  inputBinding:
    prefix: -code
- id: in_f_type
  doc: Fop/CBI codons as defined by menu 3 option 6
  type: long
  inputBinding:
    prefix: -f_type
- id: in_c_type
  doc: Cai fitness values as defined by menu 3 option 7
  type: long
  inputBinding:
    prefix: -c_type
- id: in_char_column_separator
  doc: (char)      Column separator to be used in output files (comma,tab,space)
  type: boolean
  inputBinding:
    prefix: -t
- id: in_cai
  doc: calculate Codon Adaptation Index (CAI)
  type: boolean
  inputBinding:
    prefix: -cai
- id: in_fop
  doc: calculate Frequency of OPtimal codons index (FOP)
  type: boolean
  inputBinding:
    prefix: -fop
- id: in_cbi
  doc: calculate Codon Bias Index (CBI)
  type: boolean
  inputBinding:
    prefix: -cbi
- id: in_enc
  doc: Effective Number of Codons (ENc)
  type: boolean
  inputBinding:
    prefix: -enc
- id: in_gc
  doc: G+C content of gene (all 3 codon positions)
  type: boolean
  inputBinding:
    prefix: -gc
- id: in_gcs_three
  doc: GC of synonymous codons 3rd positions
  type: boolean
  inputBinding:
    prefix: -gcs3
- id: in_sil_base
  doc: Base composition at synonymous third codon positions
  type: boolean
  inputBinding:
    prefix: -sil_base
- id: in_l_sym
  doc: Number of synonymous codons
  type: boolean
  inputBinding:
    prefix: -L_sym
- id: in_l_aa
  doc: Total number of synonymous and non-synonymous codons
  type: boolean
  inputBinding:
    prefix: -L_aa
- id: in_all_indices
  doc: All the above indices
  type: boolean
  inputBinding:
    prefix: -all_indices
- id: in_aro
  doc: Calculate aromaticity of protein
  type: boolean
  inputBinding:
    prefix: -aro
- id: in_hyd
  doc: Calculate hydropathicity of protein
  type: boolean
  inputBinding:
    prefix: -hyd
- id: in_cai_file
  doc: User input file of CAI values
  type: string
  inputBinding:
    prefix: -cai_file
- id: in_cbi_file
  doc: User input file of CBI values
  type: string
  inputBinding:
    prefix: -cbi_file
- id: in_fop_file
  doc: User input file of Fop values
  type: string
  inputBinding:
    prefix: -fop_file
- id: in_coa_cu
  doc: COA of codon usage frequencies
  type: boolean
  inputBinding:
    prefix: -coa_cu
- id: in_coa_rs_cu
  doc: COA of Relative Synonymous Codon Usage
  type: boolean
  inputBinding:
    prefix: -coa_rscu
- id: in_coa_aa
  doc: COA of amino acid usage frequencies
  type: boolean
  inputBinding:
    prefix: -coa_aa
- id: in_coa_expert
  doc: Generate detailed(expert) statistics on COA
  type: boolean
  inputBinding:
    prefix: -coa_expert
- id: in_coa_axes
  doc: Select number of axis to record
  type: long
  inputBinding:
    prefix: -coa_axes
- id: in_coa_num
  doc: "Select number of genes to use to identify optimal codons\nvalues can be whole\
    \ numbers or a percentage (5 or 10%)"
  type: long
  inputBinding:
    prefix: -coa_num
- id: in_aau
  doc: Amino Acid Usage (AAU)
  type: boolean
  inputBinding:
    prefix: -aau
- id: in_ra_au
  doc: Relative Amino Acid Usage (RAAU)
  type: boolean
  inputBinding:
    prefix: -raau
- id: in_cu
  doc: Codon Usage (CU) (default)
  type: boolean
  inputBinding:
    prefix: -cu
- id: in_cut_ab
  doc: Tabulation of codon usage
  type: boolean
  inputBinding:
    prefix: -cutab
- id: in_cut_ot
  doc: Tabulation of dataset's codon usage
  type: boolean
  inputBinding:
    prefix: -cutot
- id: in_rs_cu
  doc: Relative Synonymous Codon Usage (RSCU)
  type: boolean
  inputBinding:
    prefix: -rscu
- id: in_fast_a
  doc: fasta format
  type: boolean
  inputBinding:
    prefix: -fasta
- id: in_tidy
  doc: fasta format
  type: boolean
  inputBinding:
    prefix: -tidy
- id: in_reader
  doc: Reader format (codons are separated by spaces)
  type: boolean
  inputBinding:
    prefix: -reader
- id: in_transl
  doc: Conceptual translation of DNA to amino acid
  type: boolean
  inputBinding:
    prefix: -transl
- id: in_base
  doc: Detailed report of codon G+C composition
  type: boolean
  inputBinding:
    prefix: -base
- id: in_din_uc
  doc: Dinucleotide usage of the three codon pos.
  type: boolean
  inputBinding:
    prefix: -dinuc
- id: in_no_blk
  doc: No bulk output to be written to file
  type: File
  inputBinding:
    prefix: -noblk
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_blk
  doc: No bulk output to be written to file
  type: File
  outputBinding:
    glob: $(inputs.in_no_blk)
cwlVersion: v1.1
baseCommand:
- reader
