from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Scmap_Select_Features_R_V0_1_0 = CommandToolBuilder(tool="scmap_select_features.R", base_command=["scmap-select-features.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared.")), ToolInput(tag="in_n_features", input_type=Int(optional=True), prefix="--n-features", doc=InputDocumentation(doc="Number of the features to be selected.")), ToolInput(tag="in_output_plot_file", input_type=File(optional=True), prefix="--output-plot-file", doc=InputDocumentation(doc="Optional file name in which to store a PNG-format plot of log(expression) versus log(dropout) distribution for all genes. Selected features are highlighted with the red colour.")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'."))], outputs=[ToolOutput(tag="out_output_plot_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_plot_file", type_hint=File()), doc=OutputDocumentation(doc="Optional file name in which to store a PNG-format plot of log(expression) versus log(dropout) distribution for all genes. Selected features are highlighted with the red colour.")), ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scmap_Select_Features_R_V0_1_0().translate("wdl", allow_empty_container=True)

