class: CommandLineTool
id: akt_pca.cwl
inputs:
- id: output
  doc: ':                   output vcf'
  type: boolean
  inputBinding:
    prefix: --output
- id: output_fmt
  doc: ':                output vcf format'
  type: boolean
  inputBinding:
    prefix: --outputfmt
- id: regions_file
  doc: ':             restrict to regions listed in a file'
  type: boolean
  inputBinding:
    prefix: --regions-file
- id: regions
  doc: ':                  chromosome region'
  type: boolean
  inputBinding:
    prefix: --regions
- id: targets_file
  doc: ':             similar to -R but streams rather than index-jumps'
  type: boolean
  inputBinding:
    prefix: --targets-file
- id: targets
  doc: ':                  similar to -r but streams rather than index-jumps'
  type: boolean
  inputBinding:
    prefix: --targets
- id: force
  doc: ':                    run pca without -R/-T/-F'
  type: boolean
  inputBinding:
    prefix: --force
- id: samples_file
  doc: ':             list of samples, file'
  type: boolean
  inputBinding:
    prefix: --samples-file
- id: samples
  doc: ':                  list of samples'
  type: boolean
  inputBinding:
    prefix: --samples
- id: weight
  doc: ':                   VCF with weights for PCA'
  type: boolean
  inputBinding:
    prefix: --weight
- id: npca
  doc: ':                     first N principle components'
  type: boolean
  inputBinding:
    prefix: --npca
- id: alg
  doc: ':                      exact SVD (slow)'
  type: boolean
  inputBinding:
    prefix: --alg
- id: cov_def
  doc: ':                   definition of SVD matrix: 0=(G-mu) 1=(G-mu)/sqrt(p(1-p))
    2=diag-G(2-G) default(1)'
  type: boolean
  inputBinding:
    prefix: --covdef
- id: extra
  doc: ':                    extra vectors for Red SVD'
  type: boolean
  inputBinding:
    prefix: --extra
- id: iterations
  doc: number of power iterations (default 10 is sufficient)
  type: boolean
  inputBinding:
    prefix: --iterations
- id: sv_file
  doc: ':                   File containing singular values'
  type: boolean
  inputBinding:
    prefix: --svfile
- id: assume_hom_ref
  doc: ':            Assume missing genotypes/sites are homozygous reference (useful
    for projecting a single sample)'
  type: boolean
  inputBinding:
    prefix: --assume-homref
outputs: []
cwlVersion: v1.1
baseCommand:
- akt
- pca
