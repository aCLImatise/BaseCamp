class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/alleleCounter.pl.cwl
inputs:
- id: allele_counts_do_tpl
  doc: "Required: -bam      -b      BAM/CRAM file (expects co-located index) - if\
    \ CRAM see '-ref' -output   -o      Output file [STDOUT] -loci     -l      Alternate\
    \ loci file (just needs chr pos) - output is different, counts for each residue\
    \ Optional: -ref      -r      genome.fa, required for CRAM (with colocated .fai)\
    \ -minqual  -m      Minimum base quality to include (integer) [30] -mapqual  -q\
    \      Minimum mapping quality of read (integer) [35] -gender   -g      flag,\
    \ presence indicates loci file to be treated as gender SNPs. - cannot be used\
    \ with 's' -snp6     -s      flag, presence indicates loci file is SNP6 format.\
    \ - cannot be used with 'g' - changes output format -help     -h      This message\
    \ -version  -v      Version number"
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- alleleCounter.pl
