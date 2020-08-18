class: CommandLineTool
id: ../../../oligotm.cwl
inputs:
- id: breslauer_et_al
  doc: Breslauer et al., 1986 and Rychlik et al., 1990 (used by primer3 up to and
    including release 1.1.0).
  type: string
  inputBinding:
    position: 0
- id: use_nearest_parameters
  doc: Use nearest neighbor parameters from SantaLucia 1998 *This is the default and
    recommended value*
  type: string
  inputBinding:
    position: 1
- id: schildkraut_lifson_used
  doc: Schildkraut and Lifson 1965, used by primer3 up to  and including release 1.1.0.
  type: string
  inputBinding:
    position: 0
- id: santalucia_default_recommended
  doc: SantaLucia 1998 *This is the default and recommended value*
  type: string
  inputBinding:
    position: 1
- id: owczarzy_et_al
  doc: Owczarzy et al., 2004
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- oligotm
