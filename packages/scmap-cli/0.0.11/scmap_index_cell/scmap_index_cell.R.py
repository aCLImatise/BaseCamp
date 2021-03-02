from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Scmap_Index_Cell_R_V0_1_0 = CommandToolBuilder(tool="scmap_index_cell.R", base_command=["scmap-index-cell.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared.")), ToolInput(tag="in_number_chunks", input_type=Int(optional=True), prefix="--number-chunks", doc=InputDocumentation(doc="Number of chunks into which the expr matrix is split.")), ToolInput(tag="in_number_clusters", input_type=Int(optional=True), prefix="--number-clusters", doc=InputDocumentation(doc="Number of clusters per group for k-means clustering.")), ToolInput(tag="in_train_id", input_type=String(optional=True), prefix="--train-id", doc=InputDocumentation(doc="ID of the training dataset (optional)")), ToolInput(tag="in_remove_mat", input_type=Boolean(optional=True), prefix="--remove-mat", doc=InputDocumentation(doc="Should expression data be removed from index object? Default: FALSE")), ToolInput(tag="in_random_seed", input_type=String(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="Set random seed to make scmap-cell reproducible.")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'."))], outputs=[ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'."))], container="quay.io/biocontainers/scmap-cli:0.0.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scmap_Index_Cell_R_V0_1_0().translate("wdl")

