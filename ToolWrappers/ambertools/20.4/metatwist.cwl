class: CommandLineTool
id: metatwist.cwl
inputs:
- id: in_dx
  doc: 'Input density file(s): *.dx(gz,bz2)|*.ccp4.'
  type: File
  inputBinding:
    prefix: --dx
- id: in_map
  doc: "Mapping type:\n~ cylindrical (1D): cylindrical RDF along z-axis.\n~ twist\
    \ (2D): twisted helical map along z-axis.\n~ untwist (2D): untwisted helical map\
    \ along z-axis.\n~ spherical (1D): spherical RDF.\n~ projxyz: (1D) project 3D-map\
    \ on x,y,z axes.\n~ excess: excess number of particles.\n~ blobs: Laplacian blob\
    \ analysis.\n~ blobsper: Laplacian blob analysis on a periodic 3D-map.\n~ rhoel:\
    \ Electron density using atomic form factors.\n~ rhoelreal: Electron density using\
    \ atomic densities.\n~ cutresol: Cut 3D-map resolution range."
  type: long
  inputBinding:
    prefix: --map
- id: in_bin
  doc: (=0.1)        Bin size for re-sampling.
  type: long
  inputBinding:
    prefix: --bin
- id: in_rmax
  doc: (=60)        Extent along the rho direction (cylindrical, spherical RDFs).
  type: long
  inputBinding:
    prefix: --rmax
- id: in_zmax
  doc: (=70)        Extent in the z direction.
  type: long
  inputBinding:
    prefix: --zmax
- id: in_ymax
  doc: (=20)        Extent in the y direction.
  type: long
  inputBinding:
    prefix: --ymax
- id: in_xmax
  doc: (=20)        Extent in the x direction.
  type: long
  inputBinding:
    prefix: --xmax
- id: in_ut_rate
  doc: "(=0.18587) Untwisting rate:\n0.18587 rad/Ang - BDNA(default)\n0.16870 rad/Ang\
    \ - TDNA\n0.25590 rad/Ang - ARNA."
  type: double
  inputBinding:
    prefix: --utrate
- id: in_com
  doc: COM coordinates.
  type: string
  inputBinding:
    prefix: --com
- id: in_resolution
  doc: 'Min and max resolution thresholds (default: 1.0 and 10.0 Ang).'
  type: long
  inputBinding:
    prefix: --resolution
- id: in_bulk_dens
  doc: (=1)     Bulk density (A^-3).
  type: long
  inputBinding:
    prefix: --bulkdens
- id: in_species
  doc: 'Chemical species: atom, e.g. N, or atom & residue, e.g. O WAT ).'
  type: string
  inputBinding:
    prefix: --species
- id: in_sigma
  doc: (=0)        Convolution sigma.
  type: long
  inputBinding:
    prefix: --sigma
- id: in_threshold
  doc: (=0)    Laplacian threshold.
  type: long
  inputBinding:
    prefix: --threshold
- id: in_convolve
  doc: "(=4)     Convolution type\n- (1) Gaussian\n- (2) box\n- (3) sinc\n- (4) Laplacian\
    \ of Gaussian."
  type: long
  inputBinding:
    prefix: --convolve
- id: in_od_x
  doc: Output density file (*.dx|*.ccp4).
  type: File
  inputBinding:
    prefix: --odx
- id: in_ldx
  doc: Input Laplacian file (*.dx|*.ccp4).
  type: File
  inputBinding:
    prefix: --ldx
- id: in_n_log
  doc: Take the negative natural logarithm of the input density.
  type: boolean
  inputBinding:
    prefix: --nlog
- id: in_laplacian
  doc: Compute Laplacian, L[rho], of the input density using finite difference.
  type: boolean
  inputBinding:
    prefix: --laplacian
- id: in_average
  doc: "Average volumetric data, in case multiple datasets have been loaded.\nOtherwise,\
    \ data will be accumulated.\n"
  type: boolean
  inputBinding:
    prefix: --average
- id: in_two_one_dot
  doc: 'Options:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_od_x
  doc: Output density file (*.dx|*.ccp4).
  type: File
  outputBinding:
    glob: $(inputs.in_od_x)
cwlVersion: v1.1
baseCommand:
- metatwist
