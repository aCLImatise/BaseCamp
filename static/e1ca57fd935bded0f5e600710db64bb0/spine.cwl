class: CommandLineTool
id: spine.pl.cwl
inputs:
- id: file
  doc: "file with list of input sequence files. Accepted file formats include fasta\
    \ sequence files, genbank sequence + annotation files, or separate fasta sequence\
    \ files with corresponding gff3-formatted annotation files. This file should be\
    \ formatted like so: path/to/file1<tab>unique_identifier<tab>fasta or gbk or comb\
    \ path/to/file2<tab>unique_identifier<tab>fasta or gbk or comb Example: /home/seqs/PAO1.fasta\
    \   PAO1    fasta /home/seqs/LESB58.gbk   LESB58  gbk /home/seqs/PA14.fasta,/home/seqs/PA14.gff3\
    \  PA14    comb The third column (fasta, gbk, or comb) is optional, but should\
    \ be given if your sequence files end with suffixes other than \".fasta\" or \"\
    .gbk\" or if you are providing sequences with gff3 annotation files, i.e. comb(ined).\
    \ If you have genomes spread across multiple files (i.e. chromosomes and/or plasmids),\
    \ these can be combined by either concatenating the files into one: i.e. 'cat\
    \ chrom_I.gbk chrom_II.gbk > combined.gbk' or by including all the files in this\
    \ input file, separated by commmas: Example: /seqs/chrom_I.fasta,/seqs/chrom_II.fasta\
    \    mygenome    fasta chrom_A.gbk,chrom_B.gbk,plasmid_X.gbk   myothergenome \
    \  gbk seqA.fasta,seqB.fasta,seqA.gff3,seqB.gff3   genomeAB    comb IMPORTANT:\
    \ When including multiple files for a strain or joining multiple files within\
    \ a strain, please ensure that all chromosome/plasmid/contig IDs are unique across\
    \ files within a single genome. If sequence IDs are duplicated, the results are\
    \ likely to be wrong."
  type: string
  inputBinding:
    prefix: --file
- id: pct_core
  doc: 'percentage of input genomes in which a region must be found in order to be
    considered core (default: 100)'
  type: string
  inputBinding:
    prefix: --pctcore
- id: max_dist
  doc: "maximum distance between core genome segments. Distances less than this between\
    \ adjacent segments will result in combination of fragments with N's rather than\
    \ separating into two or more fragments. (default: 10)"
  type: string
  inputBinding:
    prefix: --maxdist
- id: l
  doc: or --license  print license information and quit
  type: boolean
  inputBinding:
    prefix: -l
- id: m
  doc: 'or --nucpath  full path to folder containing MUMmer scripts and executables,
    i.e. /home/applications/MUMmer/bin (default: tries to find MUMmer in your PATH)'
  type: boolean
  inputBinding:
    prefix: -m
- id: refs
  doc: 'reference genome sequence(s) to use as primary output source(s). This should
    be one or more integers corresponding to the order of the genomes given in the
    file above, i.e. "1" would use the first-listed sequence, "3" would use the third-listed,
    etc. To prioritize multiple genome sequences, separate the integers with commas,
    i.e. "1,3" for giving sequence 1 the highest priority and sequence 3 the next-highest
    priority. Reference sequences will serve as the source of backbone sequences to
    be output, as well as the source of backbone locus IDs, if applicable. The number
    of reference genomes used will depend on the definition of core genome given by
    option -a. For instance, if core is determined from 10 input genomes and -a is
    given as 100, then core sequence will only be taken from one reference genome.
    If, for example, -a is given as 90 from 10 input genomes, then potentially two
    reference sequences will be needed: The first for sequences present in all 10
    genomes and for sequences present in 9 out of 10 genomes including the first genome.
    The second reference sequence would then be used as the source of all sequences
    present in 9 out of 10 genomes, but not present in the first reference genome.
    (default: reference priority will be the same as the order of genomes entered,
    with the first genome having the highest priority and the last genome having the
    lowest priority)'
  type: string
  inputBinding:
    prefix: --refs
- id: mini
  doc: 'produce only limited output, i.e. just the backbone sequence derived from
    the reference genome(s). This saves time on large data sets, especially if you
    only need the backbone sequence to get accessory sequences from AGEnt. (default:
    core and accessory sequence sets will be output for all included genomes)'
  type: boolean
  inputBinding:
    prefix: --mini
- id: pan_genome
  doc: "produce a pangenome sequence and characteristics from sequences in the order\
    \ given. This option will be ignored if '--mini' option is given. (default: no\
    \ pangenome information will be output)"
  type: boolean
  inputBinding:
    prefix: --pangenome
- id: prefix
  doc: 'Output prefix (default: "output")        '
  type: string
  inputBinding:
    prefix: --prefix
- id: pct_id
  doc: 'minimum percent identity for regions to be considered homologous (default:
    85) '
  type: string
  inputBinding:
    prefix: --pctid
- id: min_out
  doc: 'minimum size of sequences to be output, in bases (default: 10)'
  type: string
  inputBinding:
    prefix: --minout
- id: threads
  doc: 'Number of parallel processes to run. Careful: This script does not perform
    any verification of the number of processers available. If you set this number
    higher than the number of processors you have, performance is likely to be significantly
    degraded. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
- id: break_len
  doc: 'Integer (default: 200)'
  type: boolean
  inputBinding:
    prefix: --breaklen
- id: min_cluster
  doc: 'Integer (default: 65)'
  type: boolean
  inputBinding:
    prefix: --mincluster
- id: diag_diff
  doc: 'Integer (default: 5)'
  type: boolean
  inputBinding:
    prefix: --diagdiff
- id: diag_factor
  doc: 'Float (default: 0.12)'
  type: boolean
  inputBinding:
    prefix: --diagfactor
- id: min_match
  doc: 'Integer (default: 20)'
  type: boolean
  inputBinding:
    prefix: --minmatch
- id: no_simplify
  doc: '(default: simplify)'
  type: boolean
  inputBinding:
    prefix: --nosimplify
outputs: []
cwlVersion: v1.1
baseCommand:
- spine.pl
