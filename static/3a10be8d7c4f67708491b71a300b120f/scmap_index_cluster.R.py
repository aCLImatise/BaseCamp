from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Scmap_Index_Cluster_R_V0_1_0 = CommandToolBuilder(tool="scmap_index_cluster.R", base_command=["scmap-index-cluster.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared.")), ToolInput(tag="in_cluster_col", input_type=String(optional=True), prefix="--cluster-col", doc=InputDocumentation(doc="Column name in the 'colData' slot of the SingleCellExperiment object containing the cell classification information.")), ToolInput(tag="in_train_id", input_type=String(optional=True), prefix="--train-id", doc=InputDocumentation(doc="ID of the training dataset (optional)")), ToolInput(tag="in_remove_mat", input_type=Boolean(optional=True), prefix="--remove-mat", doc=InputDocumentation(doc="Should expression data be removed from index object? Default: FALSE")), ToolInput(tag="in_output_plot_file", input_type=File(optional=True), prefix="--output-plot-file", doc=InputDocumentation(doc="Optional file name in which to store a PNG-format heatmap-style index visualisation.")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'."))], outputs=[ToolOutput(tag="out_output_plot_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_plot_file", type_hint=File()), doc=OutputDocumentation(doc="Optional file name in which to store a PNG-format heatmap-style index visualisation.")), ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'."))], container="quay.io/biocontainers/scmap-cli:0.0.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scmap_Index_Cluster_R_V0_1_0().translate("wdl")

