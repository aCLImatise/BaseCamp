from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Scpred_Get_Std_Output_R_V0_1_0 = CommandToolBuilder(tool="scpred_get_std_output.R", base_command=["scpred_get_std_output.R"], inputs=[ToolInput(tag="in_predictions_object", input_type=File(optional=True), prefix="--predictions-object", doc=InputDocumentation(doc="Path to the Seurat predictions object in .rds format")), ToolInput(tag="in_get_scores", input_type=Boolean(optional=True), prefix="--get-scores", doc=InputDocumentation(doc="Should score column be added? Default: TRUE")), ToolInput(tag="in_classifier", input_type=File(optional=True), prefix="--classifier", doc=InputDocumentation(doc="Path to the classifier object in .rds format (Optional; required to add dataset of origin to output table)")), ToolInput(tag="in_output_table", input_type=File(optional=True), prefix="--output-table", doc=InputDocumentation(doc="Path to the final output file in text format"))], outputs=[ToolOutput(tag="out_classifier", output_type=File(optional=True), selector=InputSelector(input_to_select="in_classifier", type_hint=File()), doc=OutputDocumentation(doc="Path to the classifier object in .rds format (Optional; required to add dataset of origin to output table)")), ToolOutput(tag="out_output_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_table", type_hint=File()), doc=OutputDocumentation(doc="Path to the final output file in text format"))], container="quay.io/biocontainers/scpred-cli:0.1.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scpred_Get_Std_Output_R_V0_1_0().translate("wdl")

