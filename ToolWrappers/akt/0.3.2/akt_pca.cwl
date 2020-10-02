class: CommandLineTool
id: akt_pca.cwl
inputs:
- id: in_output
  doc: ':                   output vcf'
  type: boolean
  inputBinding:
    prefix: --output
- id: in_output_fmt
  doc: ':                output vcf format'
  type: boolean
  inputBinding:
    prefix: --outputfmt
- id: in_regions_file
  doc: ':             restrict to regions listed in a file'
  type: boolean
  inputBinding:
    prefix: --regions-file
- id: in_regions
  doc: ':                  chromosome region'
  type: boolean
  inputBinding:
    prefix: --regions
- id: in_targets_file
  doc: ':             similar to -R but streams rather than index-jumps'
  type: boolean
  inputBinding:
    prefix: --targets-file
- id: in_targets
  doc: ':                  similar to -r but streams rather than index-jumps'
  type: boolean
  inputBinding:
    prefix: --targets
- id: in_force
  doc: ':                    run pca without -R/-T/-F'
  type: boolean
  inputBinding:
    prefix: --force
- id: in_samples_file
  doc: ':             list of samples, file'
  type: boolean
  inputBinding:
    prefix: --samples-file
- id: in_samples
  doc: ':                  list of samples'
  type: boolean
  inputBinding:
    prefix: --samples
- id: in_weight
  doc: ':                   VCF with weights for PCA'
  type: boolean
  inputBinding:
    prefix: --weight
- id: in_npca
  doc: ':                     first N principle components'
  type: boolean
  inputBinding:
    prefix: --npca
- id: in_alg
  doc: ':                      exact SVD (slow)'
  type: boolean
  inputBinding:
    prefix: --alg
- id: in_cov_def
  doc: ':                   definition of SVD matrix: 0=(G-mu) 1=(G-mu)/sqrt(p(1-p))
    2=diag-G(2-G) default(1)'
  type: boolean
  inputBinding:
    prefix: --covdef
- id: in_extra
  doc: ':                    extra vectors for Red SVD'
  type: boolean
  inputBinding:
    prefix: --extra
- id: in_iterations
  doc: number of power iterations (default 10 is sufficient)
  type: boolean
  inputBinding:
    prefix: --iterations
- id: in_sv_file
  doc: ':                   File containing singular values'
  type: boolean
  inputBinding:
    prefix: --svfile
- id: in_assume_hom_ref
  doc: ':            Assume missing genotypes/sites are homozygous reference (useful
    for projecting a single sample)'
  type: boolean
  inputBinding:
    prefix: --assume-homref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- akt
- pca
