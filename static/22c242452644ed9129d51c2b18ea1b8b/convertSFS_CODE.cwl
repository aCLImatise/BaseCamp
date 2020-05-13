class: CommandLineTool
id: convertSFS_CODE.cwl
inputs:
- id: mk
  doc: "(-m) <ingroup> <outgroup> [OBS] [F [a] <file>] [L <#loci> <L1>..<L#loc>] [ITS\
    \ [#its]] [OGSS <OG_size> Extract McDonald-Kreitman (MK) tables for comparing\
    \ <ingroup> to <outgroup>.  By default, will print the MK table for the true data\
    \ (saved during simulation) summed over all loci & iterations, with each entry\
    \ space delimited.  Using \"OBS\" option will print the observed MK table based\
    \ on parsimony (by default a single sequence from the outgroup will be used for\
    \ divergence, but specifying OG_size can change this). Use \"F\" to print output\
    \ to the file <file> (include 'a' to append to file instead of over-writing it).\
    \  Use \"L\" to print specific loci (<#loci> = -1 prints seperate MK tables at\
    \ each locus).  To print each iteration indepdently, use  'ITS' option (to print\
    \ only a subset of iterations,  include the number of iterations [#its].  Using\
    \ the \"OGSS\" option sets the outgroup size to <OG_size>, such that any mutation\
    \ carried by the first <OG_size> chromosomes in the outgroup will be considered\
    \ a fixed difference (setting <OG_size> = -1 is uses the entire sample size).\
    \ Each MK table is printed in the following order: <PS> <PN> <FS> <FN>, where\
    \ 'P' refers to polymorphic, 'F' fixed, 'S' synonymous and 'N' is nonsynonymous."
  type: boolean
  inputBinding:
    prefix: --MK
- id: sfs
  doc: "(-s) [OBS <P1> <P2> [OG_size]] [T <0/1/2>] [F [a] <file>] [L <#loci> <L1>..<L#loc>]\
    \ [P <#pops> <P1>..<P#pops>] [ITS [#its]] Extract Site-Frequency Spectra.  By\
    \ default, will print the SFS for the true data (saved during simulation) summed\
    \ over all loci & iterations, each entry space delimited and populations separated\
    \ by a tab.  Using \"OBS\" option will print the observed SFS for population <P1>\
    \ using <P2> as an  outgroup to parsimoniously determine the ancestral state of\
    \ each SNP (arbitrarily chooses first sequence from outgroup as reference unless\
    \ OG_size is specified).  Use \"T\" option to change the type of SFS extracted:\
    \ 0=synonymous, 1=nonsynonymous, 2=all mutants (default). Use \"F\" to print output\
    \ to the file <file> (include 'a' to append to file instead of over-writing it).\
    \  Use \"L\" to print specific loci (<#loci> = -1 prints seperate SFS for each\
    \ locus).  Use \"P\" to print the SFS only from specific populations (only valid\
    \ for true data, i.e. not when using OBS flag).  To print each iteration indepdently,\
    \ use 'ITS' flag (to print only a subset of iterations, include the number of\
    \ iterations [#its]."
  type: boolean
  inputBinding:
    prefix: --SFS
outputs: []
cwlVersion: v1.1
baseCommand:
- convertSFS_CODE
