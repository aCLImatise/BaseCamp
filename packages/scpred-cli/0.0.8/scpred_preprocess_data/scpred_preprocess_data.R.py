from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Scpred_Preprocess_Data_R_V0_1_0 = CommandToolBuilder(tool="scpred_preprocess_data.R", base_command=["scpred_preprocess_data.R"], inputs=[ToolInput(tag="in_input_sce_object", input_type=File(optional=True), prefix="--input-sce-object", doc=InputDocumentation(doc="Path to the input SCE object in .rds format")), ToolInput(tag="in_normalised_counts_slot", input_type=String(optional=True), prefix="--normalised-counts-slot", doc=InputDocumentation(doc="Name of the slot with normalised counts matrix in SCE object. Default: normcounts")), ToolInput(tag="in_output_matrix_object", input_type=File(optional=True), prefix="--output-matrix-object", doc=InputDocumentation(doc="Path to the output matrix object in .rds format")), ToolInput(tag="in_output_labels", input_type=File(optional=True), prefix="--output-labels", doc=InputDocumentation(doc="Path to the metadata file with cell type labels in text format"))], outputs=[ToolOutput(tag="out_output_matrix_object", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_matrix_object", type_hint=File()), doc=OutputDocumentation(doc="Path to the output matrix object in .rds format"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scpred_Preprocess_Data_R_V0_1_0().translate("wdl", allow_empty_container=True)

