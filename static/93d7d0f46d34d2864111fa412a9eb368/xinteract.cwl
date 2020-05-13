class: CommandLineTool
id: xinteract.cwl
inputs:
- id: t
  doc: '[run regression test against a previously derived result]'
  type: boolean
  inputBinding:
    prefix: -t
- id: t
  doc: '! [learn results for regression test]'
  type: boolean
  inputBinding:
    prefix: -t
- id: t
  doc: '# [run regression test, do not stop on test failure]'
  type: boolean
  inputBinding:
    prefix: -t
- id: n_my_file
  doc: .pep.xml [write output to file 'myfile.pep.xml']
  type: boolean
  inputBinding:
    prefix: -Nmyfile
- id: r
  doc: protein names in OMSSA data
  type: string
  inputBinding:
    prefix: -R
- id: g
  doc: collision energy in pepXML
  type: string
  inputBinding:
    prefix: -G
- id: v
  doc: compensation voltage (FAIMS) in pepXML
  type: string
  inputBinding:
    prefix: -V
- id: prec
  doc: precursor intensity in pepXML
  type: string
  inputBinding:
    prefix: -PREC
- id: ni
  doc: '[do not run Interact (convert to pepXML only)]'
  type: boolean
  inputBinding:
    prefix: -nI
- id: np
  doc: '[do not run PeptideProphet]'
  type: boolean
  inputBinding:
    prefix: -nP
- id: nr
  doc: '[do not run get all proteins corresponding to degenerate peptides from database]'
  type: boolean
  inputBinding:
    prefix: -nR
- id: p0
  doc: '[do not discard search results with PeptideProphet probabilities below 0.05]'
  type: boolean
  inputBinding:
    prefix: -p0
- id: x
  doc: <num> [number of extra PeptideProphet interations; default <num>=20]
  type: boolean
  inputBinding:
    prefix: -x
- id: i
  doc: <num> [ignore charge <num>+]
  type: boolean
  inputBinding:
    prefix: -I
- id: d
  doc: <tag> [use decoy hits to pin down the negative distribution. the decoy protein
    names must begin with <tag> (whitespace is not allowed)]
  type: boolean
  inputBinding:
    prefix: -d
- id: d
  doc: <database_path> [specify path to database]
  type: boolean
  inputBinding:
    prefix: -D
- id: c
  doc: <conservative_level> [specify how conservative the model is to be in number
    of standard deviations from negative mean  to allow positive model to cover (default
    0, higher is more conservative)]
  type: boolean
  inputBinding:
    prefix: -c
- id: ppm
  doc: '[use PPM instead of daltons in Accurate Mass Model]'
  type: boolean
  inputBinding:
    prefix: -PPM
- id: e
  doc: <experiment_label> [used to commonly label all spectra belonging to one experiment
    (required by iProphet)]
  type: boolean
  inputBinding:
    prefix: -E
- id: l
  doc: <num> [minimum peptide length considered in the analysis (default 7)]
  type: boolean
  inputBinding:
    prefix: -l
- id: t
  doc: <database type> [specify 'AA' for amino acid, 'NA' for nucleic acid (default
    'AA')]
  type: boolean
  inputBinding:
    prefix: -T
- id: a
  doc: <data_path> [specify absolute path to data directory]
  type: boolean
  inputBinding:
    prefix: -a
- id: p
  doc: <num> [filter results below PeptideProphet probability <num>; default <num>=0.05]
  type: boolean
  inputBinding:
    prefix: -p
- id: mw
  doc: '[calculate protein molecular weights]'
  type: boolean
  inputBinding:
    prefix: -mw
- id: mono
  doc: '[calculate monoisotopic peptide masses during conversion to pepXML]'
  type: boolean
  inputBinding:
    prefix: -MONO
- id: ave
  doc: '[calculate average peptide masses during conversion to pepXML]'
  type: boolean
  inputBinding:
    prefix: -AVE
- id: threads
  doc: '[specify maximum number of threads to use]'
  type: string
  inputBinding:
    prefix: -THREADS
- id: ex
  doc: '[specify sample enzyme] -eT [specify sample enzyme = Trypsin] -eS [specify
    sample enzyme = StrictTrypsin] -eC [specify sample enzyme = Chymotrypsin] -eR
    [specify sample enzyme = RalphTrypsin] -eA [specify sample enzyme = AspN] -eG
    [specify sample enzyme = GluC] -eB [specify sample enzyme = GluC Bicarb] -eM [specify
    sample enzyme = CNBr] -eD [specify sample enzyme = Trypsin/CNBr] -e3 [specify
    sample enzyme = Chymotrypsin/AspN/Trypsin] -eE [specify sample enzyme = Elastase]
    -eK [specify sample enzyme = LysC / Trypsin_K (cuts after K not before P)] -eL
    [specify sample enzyme = LysN (cuts before K)] -eP [specify sample enzyme = LysN
    Promisc (cuts before KR)] -eN [specify sample enzyme = Nonspecific or None]'
  type: boolean
  inputBinding:
    prefix: -eX
- id: mz_to_l
  doc: '[Use specified +/- mz tolerance on site specific ions (default=0.1 dalton)] '
  type: string
  inputBinding:
    prefix: -MZTOL
- id: no_update
  doc: "[Don't update modification_info tags in pepXML] "
  type: boolean
  inputBinding:
    prefix: -NOUPDATE
- id: m
  doc: <num>        change XPRESS mass tolerance (default=1.0)
  type: boolean
  inputBinding:
    prefix: -m
- id: a
  doc: tolerance specified by -m is in ppm (default=Daltons)
  type: boolean
  inputBinding:
    prefix: -a
- id: n
  doc: <str>,<num>  change XPRESS residue mass difference for <str> to <num> (default=9.0)
  type: boolean
  inputBinding:
    prefix: -n
- id: b
  doc: heavy labeled peptide elutes before light labeled partner
  type: boolean
  inputBinding:
    prefix: -b
- id: f
  doc: <num>        fix elution peak area as +-<num> scans (<num> optional, default=5)
    from peak apex
  type: boolean
  inputBinding:
    prefix: -F
- id: c
  doc: <num>        change minimum number of chromatogram points needed for quantitation
    (default=5)
  type: boolean
  inputBinding:
    prefix: -c
- id: p
  doc: <num>        number of 13C isotopic peaks to add to precursor chromatogram
    (default=1)
  type: boolean
  inputBinding:
    prefix: -p
- id: l
  doc: for ratio, set/fix light to 1, vary heavy
  type: boolean
  inputBinding:
    prefix: -L
- id: h
  doc: for ratio, set/fix heavy to 1, vary light
  type: boolean
  inputBinding:
    prefix: -H
- id: m
  doc: for 15N metabolic labeling; ignore all other parameters, assume IDs are normal
    and quantify w/corresponding 15N heavy pair
  type: boolean
  inputBinding:
    prefix: -M
- id: n
  doc: for 15N metabolic labeling; ignore all other parameters, assume IDs are 15N
    heavy and quantify w/corresponding 14N light pair
  type: boolean
  inputBinding:
    prefix: -N
- id: o
  doc: for 13C metabolic labeling; ignore all other parameters, assume IDs are normal
    and quantify w/corresponding 13C heavy pair
  type: boolean
  inputBinding:
    prefix: -O
- id: p
  doc: for 13C metabolic labeling; ignore all other parameters, assume IDs are 13C
    heavy and quantify w/corresponding 12C light pair
  type: boolean
  inputBinding:
    prefix: -P
- id: i
  doc: also export intensities and intensity based ratio
  type: boolean
  inputBinding:
    prefix: -i
- id: l
  doc: 'label free mode: stats on precursor ions only, no ratios only relevant label-free
    parameters are -m, -c, and -p'
  type: boolean
  inputBinding:
    prefix: -l
- id: l
  doc: <str>    change labeled residues (default='C')
  type: boolean
  inputBinding:
    prefix: -l
- id: b
  doc: heavy labeled peptide elutes before light labeled partner
  type: boolean
  inputBinding:
    prefix: -b
- id: r
  doc: <num>    range around precusor m/z to search for peak (default 0.5)
  type: boolean
  inputBinding:
    prefix: -r
- id: f
  doc: <num>    areaFlag set to num (ratio display option)
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: static modification quantification (i.e. each run is either all light or all
    heavy)
  type: boolean
  inputBinding:
    prefix: -S
- id: f
  doc: use fixed scan range for light and heavy
  type: boolean
  inputBinding:
    prefix: -F
- id: c
  doc: quantitate only the charge state where the CID was made
  type: boolean
  inputBinding:
    prefix: -C
- id: b
  doc: return a ratio even if the background is high
  type: boolean
  inputBinding:
    prefix: -B
- id: z
  doc: set all background to zero
  type: boolean
  inputBinding:
    prefix: -Z
- id: m
  doc: '<str>    specified label masses (e.g. M74.325Y125.864), only relevant for  static
    modification quantification '
  type: boolean
  inputBinding:
    prefix: -m
- id: prev_aa_len
  doc: set the number of previous AAs recorded for a peptide hit (default 1)
  type: long
  inputBinding:
    prefix: -PREV_AA_LEN
- id: next_aa_len
  doc: set the number of following AAs recorded for a peptide hit (default 1)
  type: long
  inputBinding:
    prefix: -NEXT_AA_LEN
- id: restore_nonexistent_if_prefix
  doc: for proteins which starts with <str> and not found in refresh database, keep
    original protein names instead of NON_EXISTENT
  type: string
  inputBinding:
    prefix: -RESTORE_NONEXISTENT_IF_PREFIX
outputs: []
cwlVersion: v1.1
baseCommand:
- xinteract
