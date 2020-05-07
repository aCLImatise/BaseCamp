version 1.0

task MedpyGrid.py {
  input {
    String exampleExample
    String shapeShape
    String pixelPixelSpacing
    String offsetOffset
    Boolean realReal
    Boolean vV
    Boolean dD
    Boolean forceForce
    String? outputOutput
    String? spacingSpacing
  }
  command <<<
    medpy_grid.py \
      ~{outputOutput} \
      ~{if defined(exampleExample) then ("--example " +  '"' + exampleExample + '"') else ""} \
      ~{if defined(shapeShape) then ("--shape " +  '"' + shapeShape + '"') else ""} \
      ~{if defined(pixelPixelSpacing) then ("--pixel-spacing " +  '"' + pixelPixelSpacing + '"') else ""} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{true="--real" false="" realReal} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="--force" false="" forceForce} \
      ~{spacingSpacing}
  >>>
}