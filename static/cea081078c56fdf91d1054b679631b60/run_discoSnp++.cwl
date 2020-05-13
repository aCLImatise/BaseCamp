class: CommandLineTool
id: run_discoSnp++.sh.cwl
inputs:
- id: p
  doc: '| --prefix <string> All out files will start with this prefix. Default="discoRes"'
  type: boolean
  inputBinding:
    prefix: -p
- id: l
  doc: '| --no_low_complexity Remove low complexity bubbles'
  type: boolean
  inputBinding:
    prefix: -l
- id: t
  doc: '| --contigs Extend found polymorphisms with contigs (default: extend with
    unitigs)'
  type: boolean
  inputBinding:
    prefix: -T
- id: d
  doc: '| --max_substitutions <int> Set the number of authorized substitutions used
    while mapping reads on found SNPs (kissreads). Default=1'
  type: boolean
  inputBinding:
    prefix: -d
- id: n
  doc: '| --no_genotype Do not compute the genotypes'
  type: boolean
  inputBinding:
    prefix: -n
- id: u
  doc: '| --max_threads <int> Max number of used threads. 0 means all threads default
    0'
  type: boolean
  inputBinding:
    prefix: -u
- id: g
  doc: "| --reference_genome <file name> Reference genome file (fasta, fastq, gzipped\
    \ or nor). In absence of this file the VCF created by VCF_creator won't contain\
    \ mapping related results."
  type: boolean
  inputBinding:
    prefix: -G
- id: r
  doc: Use the reference file also in the variant calling, not only for mapping results
  type: boolean
  inputBinding:
    prefix: -R
- id: b
  doc: '| --bwa_path <directory name> bwa path. e.g. /home/me/my_programs/bwa-0.7.12/
    (note that bwa must be pre-compiled) Optional unless option -G used and bwa is
    not in the binary path.'
  type: boolean
  inputBinding:
    prefix: -B
- id: e
  doc: 'Map variant predictions on reference genome with their unitig or contig extensions.
    Useless unless mapping on reference genome is required (option -G). '
  type: boolean
  inputBinding:
    prefix: -e
- id: w
  doc: 'Wraith mode: only show all discoSnp++ commands without running them'
  type: boolean
  inputBinding:
    prefix: -w
- id: v
  doc: <0 or 1> Verbose 0 (avoids progress output) or 1 (enables progress output)
    -- default=1.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- run_discoSnp++.sh
