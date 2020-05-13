version 1.0

task CategorizedDistScatterplot.py {
  input {
    String mapMap
    String distanceDistanceMatrix
    String primaryPrimaryState
    String axisAxisCategory
    String outputOutputPath
  }
  command <<<
    categorized_dist_scatterplot.py \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{if defined(distanceDistanceMatrix) then ("--distance_matrix " +  '"' + distanceDistanceMatrix + '"') else ""} \
      ~{if defined(primaryPrimaryState) then ("--primary_state " +  '"' + primaryPrimaryState + '"') else ""} \
      ~{if defined(axisAxisCategory) then ("--axis_category " +  '"' + axisAxisCategory + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}