from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Scmap_Scmap_Cluster_R_V0_1_0 = CommandToolBuilder(tool="scmap_scmap_cluster.R", base_command=["scmap-scmap-cluster.R"], inputs=[ToolInput(tag="in_index_object_file", input_type=File(optional=True), prefix="--index-object-file", doc=InputDocumentation(doc="'SingleCellExperiment' object previously prepared with the scmap-index-cluster.R script.")), ToolInput(tag="in_projection_object_file", input_type=File(optional=True), prefix="--projection-object-file", doc=InputDocumentation(doc="'SingleCellExperiment' object to project.")), ToolInput(tag="in_threshold", input_type=String(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Threshold on similarity (or probability for SVM and RF).")), ToolInput(tag="in_output_text_file", input_type=File(optional=True), prefix="--output-text-file", doc=InputDocumentation(doc="File name in which to text-format cell type assignments.")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'."))], outputs=[ToolOutput(tag="out_output_text_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_text_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to text-format cell type assignments.")), ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scmap_Scmap_Cluster_R_V0_1_0().translate("wdl", allow_empty_container=True)

