class: CommandLineTool
id: NucleicAcidSearchEngine.cwl
inputs:
- id: in
  doc: "*                                  Input file: spectra (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: database
  doc: "*                            Input file: sequence database (valid formats:\
    \ 'fasta')"
  type: File
  inputBinding:
    prefix: -database
- id: out
  doc: "*                                 Output file: mzTab (valid formats: 'mzTab')"
  type: File
  inputBinding:
    prefix: -out
- id: id_out
  doc: "Output file: idXML (for visualization in TOPPView) (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id_out
- id: lf_q_out
  doc: "Output file: Targets for label-free quantification using FeatureFinderMetaboIdent\
    \ ('id' input) (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -lfq_out
- id: precursor
  doc: ":mass_tolerance <tolerance>        Precursor mass tolerance (+/- around uncharged\
    \ precursor mass) (default: '10.0')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":mass_tolerance_unit <unit>        Unit of precursor mass tolerance (default:\
    \ 'ppm' valid: 'Da', 'ppm')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":min_charge <num>                  Minimum precursor charge to be considered\
    \ (default: '-1')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":max_charge <num>                  Maximum precursor charge to be considered\
    \ (default: '-20')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: :include_unknown_charge            Include MS2 spectra with unknown precursor
    charge - try to match them in any possible charge between 'min_charge' and 'max_charge',
    at the risk of a higher error  rate
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: :use_avg_mass                      Use average instead of monoisotopic precursor
    masses (appropriate for low-resolution instruments)
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: :use_adducts                       Consider possible salt adducts (see 'precursor:potential_adducts')
    when matching precursor masses
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":potential_adducts <list>          Adducts considered to explain mass differences.\
    \ Format: 'Element:Charge(+/-)', i.e. the number of '+' or '-' indicates the charge,\
    \ e.g. 'Ca:++' indicates +2. Only  used if 'precursor:use_adducts' is set. (default:\
    \ '[Na:+]')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":isotopes <list>                   Correct for mono-isotopic peak misassignments.\
    \ E.g.: 1 = precursor may be misassigned to the first isotopic peak. Ignored if\
    \ 'use_avg_mass' is set. (default: '[0  1 2 3 4]')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: fragment
  doc: ":mass_tolerance <tolerance>         Fragment mass tolerance (+/- around fragment\
    \ m/z) (default: '10.0')"
  type: boolean
  inputBinding:
    prefix: -fragment
- id: fragment
  doc: ":mass_tolerance_unit <unit>         Unit of fragment mass tolerance (default:\
    \ 'ppm' valid: 'Da', 'ppm')"
  type: boolean
  inputBinding:
    prefix: -fragment
- id: fragment
  doc: ":ions <choice>                      Fragment ions to include in theoretical\
    \ spectra (default: '[a-B a b c d w x y z]' valid: 'a-B', 'a', 'b', 'c', 'd',\
    \ 'w', 'x', 'y', 'z')"
  type: boolean
  inputBinding:
    prefix: -fragment
- id: modifications
  doc: ":variable <mods>               Variable modifications (valid: 'm1Am', 'm1Gm',\
    \ 'm1Im', 'm1acp3Y', 'm1A', 'm1G', 'm1I', 'm1Y', 'm28A', 'msms2i6A', 'ges2U',\
    \ 'k2C', 'm2A', 'ms2ct6A', 'ms2io6A', 'ms2 hn6A', 'ms2i6A', 'ms2m6A', 'ms2t6A',\
    \ 'se2U', 's2Um', 's2C', 's2U', 'Am', 'Cm', 'Gm', 'Im', 'Ym', 'Um', 'mcmo5Um',\
    \ 'Ar(p)', 'Gr(p)', '(pN)2\\'3\\'>p', 'hm5Cm', 'm3Um' , 'acp3D', 'acp3Y', 'acp3U',\
    \ 'm3C', 'm3Y', 'm3U', 'imG-14', 's4U', 'm5Cm', 'm5Um', 'mchm5Um', 'mchm5U', 'inm5s2U',\
    \ 'inm5Um', 'inm5U', 'nm5ges2U', 'nm5se2U', 'nm5s2 U', 'nm5U', 'nchm5U', 'ncm5s2U',\
    \ 'ncm5Um', 'ncm5U', 'chm5U', 'cm5s2U', 'cmnm5ges2U', 'cmnm5se2U', 'cmnm5s2U',\
    \ 'cmnm5Um', 'cmnm5U', 'cm5U', 'cnm5U', 'f5Cm', 'f5C', 'ho5C', 'hm5C', 'ho5U',\
    \ 'mcm5s2U', 'mcm5Um', 'mcm5U', 'mo5U', 'm5s2U', 'mnm5ges2U', 'mnm5se2U', 'mnm5s2U',\
    \ 'mnm5U', 'm5C', 'm5D', 'm5U', 'tm5s2U', 'tm5U', 'CoA(pN) ', 'acCoA(pN)', 'malonyl-CoA(pN)',\
    \ 'succinyl-CoA(pN)', 'p(pN)', '5\\'-OH-N', '(pN)', 'NAD(pN)', 'pp(pN)', 'yW-86',\
    \ 'yW-72', 'yW-58', 'preQ1tRNA', 'preQ0tRNA', 'm7G' , 'm7Gpp(pN)', 'm8A', 'm2Gm',\
    \ 'm27Gm', 'm27G', 'm27Gpp(pN)', 'm22Gm', 'm227G', 'm227Gpp(pN)', 'm22G', 'm2G',\
    \ 'm4Cm', 'm44Cm', 'm44C', 'ac4Cm', 'ac4C', 'm4C', 'm6Am ', 'm66Am', 'm66A', 'io6A',\
    \ 'ac6A', 'f6A', 'g6A', 'hm6A', 'hn6A', 'i6A', 'm6t6A', 'm6A', 't6A', 'Qbase',\
    \ 'C+', 'mm(pN)', 'm(pN)', 'G+', 'ct6A', 'D', 'oQ', 'galQ', ... mcmo5U', 'mchm5Um/mcmo5Um',\
    \ 'm6t6A/hn6A', 'galQ/manQ', 'mA?', 'mC?', 'mG?', 'mU?', 'mI?', 'msU?', 'mmA?',\
    \ 'mmC?', 'mmG?', 'mmmG?', 'ac4C/f5Cm?', 'acp3U/cmnm5Um?')"
  type: boolean
  inputBinding:
    prefix: -modifications
- id: modifications
  doc: ":variable_max_per_oligo <num>  Maximum number of residues carrying a variable\
    \ modification per candidate oligonucleotide (default: '2')"
  type: boolean
  inputBinding:
    prefix: -modifications
- id: modifications
  doc: :resolve_ambiguities           Attempt to resolve ambiguous modifications (e.g.
    'mA?' for 'mA'/'Am') based on a-B ions. This incurs a performance cost because
    two modifications have to be considered for each case. Requires a-B ions to be
    enabled in parameter 'fragment:ions'.
  type: boolean
  inputBinding:
    prefix: -modifications
- id: oligo
  doc: ":min_size <num>                        Minimum size an oligonucleotide must\
    \ have after digestion to be considered in the search (default: '5')"
  type: boolean
  inputBinding:
    prefix: -oligo
- id: oligo
  doc: ":max_size <num>                        Maximum size an oligonucleotide must\
    \ have after digestion to be considered in the search, leave at 0 for no limit\
    \ (default: '0')"
  type: boolean
  inputBinding:
    prefix: -oligo
- id: oligo
  doc: ":missed_cleavages <num>                Number of missed cleavages (default:\
    \ '1')"
  type: boolean
  inputBinding:
    prefix: -oligo
- id: oligo
  doc: ":enzyme <choice>                       The enzyme used for RNA digestion (default:\
    \ 'no cleavage' valid: 'RNase_T1', 'cusativin', 'RNase_U2', 'RNase_A', 'RNase_MC1',\
    \ 'RNase_H', 'no cleavage', 'unspecific cleavage')"
  type: boolean
  inputBinding:
    prefix: -oligo
- id: fdr
  doc: :decoy_pattern <string>                  String used as part of the accession
    to annotate decoy sequences (e.g. 'DECOY_'). Leave empty to skip the FDR/q-value
    calculation.
  type: boolean
  inputBinding:
    prefix: -fdr
- id: fdr
  doc: ":cutoff <value>                          Cut-off for FDR filtering; search\
    \ hits with higher q-values will be removed (default: '1.0' min: '0.0' max: '1.0')"
  type: boolean
  inputBinding:
    prefix: -fdr
- id: fdr
  doc: :remove_decoys                           Do not score hits to decoy sequences
    and remove them when filtering
  type: boolean
  inputBinding:
    prefix: -fdr
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- NucleicAcidSearchEngine
