class: CommandLineTool
id: proteinortho6.pl.cwl
inputs:
- id: in_project
  doc: '=    prefix for all result file names [default: myproject]'
  type: boolean?
  inputBinding:
    prefix: -project
- id: in_cpus
  doc: '=       number of processors to use [default: auto]'
  type: boolean?
  inputBinding:
    prefix: -cpus
- id: in_ram
  doc: '=        maximal used ram threshold for LAPACK and the input graph in MB [default:
    75% of the total memory]'
  type: boolean?
  inputBinding:
    prefix: -ram
- id: in_silent
  doc: sets verbose to 0
  type: boolean?
  inputBinding:
    prefix: -silent
- id: in_temp
  doc: '=       path for temporary files [default: working directory]'
  type: boolean?
  inputBinding:
    prefix: -temp
- id: in_keep
  doc: stores temporary blast results for reuse (same -project= name is mandatory)
  type: boolean?
  inputBinding:
    prefix: -keep
- id: in_force
  doc: forces the recalculation of the blast results in any case in step=2. Also forces
    the recreation of the database generation in step=1
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_clean
  doc: remove all unnecessary files after processing
  type: boolean?
  inputBinding:
    prefix: -clean
- id: in_step
  doc: "=       1 -> generate indices\n2 -> run blast (and ff-adj, if -synteny is\
    \ set)\n3 -> clustering\n0 -> all (default)"
  type: boolean?
  inputBinding:
    prefix: -step
- id: in_isoform
  doc: "Enables the isoform processing:\nncbi -> if the word 'isoform' is found\n\
    uniprot -> 'Isoform of XYZ' (You need to add the *_additional.fasta files to the\
    \ analysis)\ntrinity -> using '_iX' suffix"
  type: boolean?
  inputBinding:
    prefix: -isoform
- id: in_blast_program_need
  doc: "=          blast program [default: diamond]\n{blastp|blastn|tblastx|blastp_legacy|blastn_legacy|tblastx_legacy|diamond|usearch|ublast|lastp|lastn|rapsearch|topaz|blatp|blatn|mmseqsp|mmseqsn}\n\
    The program need to be installed first.\nA suffix 'p' or 'n' indicates aminoacid\
    \ fasta files (p) or nucleotide fasta files (n).\nThe '_legacy' suffix indicates\
    \ legacy blastall (otherwise blast+ is used).\nautoblast : automatically detects\
    \ the blast+ program (blastp,blastn,tblastn,blastx) depending on the input (can\
    \ also be mixed together!)\nblast*|tblastx : standard blast+ family (blastp :\
    \ protein files, blastn : dna files)\nblast*_legacy : legacy blast family (blastall)\n\
    diamond : Only for protein files! standard diamond procedure and for genes/proteins\
    \ of length >40 with the additional --sensitive flag\nusearch : usearch_local\
    \ procedure with -id 0 (minimum identity percentage).\nublast : usearch_ublast\
    \ procedure.\nlastn : standard lastal. Only for dna files!\nlastp : lastal using\
    \ -p and BLOSUM62 scoring matrix. Only for protein files!\nrapsearch : Only for\
    \ protein files!\ntopaz : Only for protein files!\nblat* : Blat family. blatp\
    \ : For protein files! blatn : For dna files! blatx : For dna files!\nmmseqs*\
    \ : mmseqs family. mmseqsp : For protein files! mmseqsn : For dna files! blatx\
    \ : For dna files!"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in__evalue_blast
  doc: '=          E-value for blast [default: 1e-05]'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_self_blast
  doc: apply selfblast, detects paralogs without orthologs
  type: boolean?
  inputBinding:
    prefix: -selfblast
- id: in_sim
  doc: '=        min. similarity for additional hits (0..1) [default: 0.95]'
  type: boolean?
  inputBinding:
    prefix: -sim
- id: in_identity
  doc: '=   min. percent identity of best blast hits [default: 25]'
  type: boolean?
  inputBinding:
    prefix: -identity
- id: in_cov
  doc: '=        min. coverage of best blast alignments in % [default: 50]'
  type: boolean?
  inputBinding:
    prefix: -cov
- id: in_subpara_blast
  doc: "=    additional parameters for the search tool\nexample -subparaBlast='-seg\
    \ no' or -subparaBlast='--more-sensitive' for diamond"
  type: boolean?
  inputBinding:
    prefix: -subparaBlast
- id: in_synteny
  doc: "activate PoFF extension to separate similar sequences print\nby contextual\
    \ adjacencies (requires .gff for each .fasta)"
  type: boolean?
  inputBinding:
    prefix: -synteny
- id: in_dups
  doc: "=       PoFF: number of reiterations for adjacencies heuristic,\nto determine\
    \ duplicated regions (default: 0)"
  type: boolean?
  inputBinding:
    prefix: -dups
- id: in_cs
  doc: "=         PoFF: Size of a maximum common substring (MCS) for\nadjacency matches\
    \ (default: 3)"
  type: boolean?
  inputBinding:
    prefix: -cs
- id: in_alpha
  doc: "=      PoFF: weight of adjacencies vs. sequence similarity\n(default: 0.5)"
  type: boolean?
  inputBinding:
    prefix: -alpha
- id: in_singles
  doc: report singleton genes without any hit
  type: boolean?
  inputBinding:
    prefix: -singles
- id: in_conn
  doc: '=       min. algebraic connectivity [default: 0.1]'
  type: boolean?
  inputBinding:
    prefix: -conn
- id: in_xml
  doc: produces an OrthoXML formatted file of the *.proteinortho.tsv file.
  type: boolean?
  inputBinding:
    prefix: -xml
- id: in_purity
  doc: '=     avoid spurious graph assignments, the higher the more uncertain edges
    are cut [0-1, default: 1e-07]'
  type: boolean?
  inputBinding:
    prefix: -purity
- id: in_mcl
  doc: enables the mcl algorithm for clustering instead of power iteration or lapacks
    routine. (needs mcl to be installed)
  type: boolean?
  inputBinding:
    prefix: -mcl
- id: in_no_graph
  doc: do not generate .proteinortho-graph file (pairwise orthology relations)
  type: boolean?
  inputBinding:
    prefix: -nograph
- id: in_desc
  doc: write description files (for NCBI FASTA input only)
  type: boolean?
  inputBinding:
    prefix: -desc
- id: in_debug
  doc: gives detailed information for bug tracking
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_bin_path
  doc: =    path to your directory of local programs that are not available globally
    (this should not be needed)
  type: boolean?
  inputBinding:
    prefix: -binpath
- id: in_fast_a_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_fast_a_two
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_fast_a_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- proteinortho6.pl
