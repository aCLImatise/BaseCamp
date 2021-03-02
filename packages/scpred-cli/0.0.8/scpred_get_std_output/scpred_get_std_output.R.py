from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Scpred_Get_Std_Output_R_V0_1_0 = CommandToolBuilder(tool="scpred_get_std_output.R", base_command=["scpred_get_std_output.R"], inputs=[ToolInput(tag="in_predictions_file", input_type=File(optional=True), prefix="--predictions-file", doc=InputDocumentation(doc="Path to the predictions file in text format")), ToolInput(tag="in_cell_id_col", input_type=String(optional=True), prefix="--cell-id-col", doc=InputDocumentation(doc="Cell id column name. If not provided, it is assumed cell ids are represented by index")), ToolInput(tag="in_get_scores", input_type=Boolean(optional=True), prefix="--get-scores", doc=InputDocumentation(doc="Should score column be added? Default: FALSE")), ToolInput(tag="in_classifier", input_type=File(optional=True), prefix="--classifier", doc=InputDocumentation(doc="Path to the classifier object in .rds format (Optional; required to add dataset of origin to output table)")), ToolInput(tag="in_output_table", input_type=File(optional=True), prefix="--output-table", doc=InputDocumentation(doc="Path to the final output file in text format"))], outputs=[ToolOutput(tag="out_classifier", output_type=File(optional=True), selector=InputSelector(input_to_select="in_classifier", type_hint=File()), doc=OutputDocumentation(doc="Path to the classifier object in .rds format (Optional; required to add dataset of origin to output table)")), ToolOutput(tag="out_output_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_table", type_hint=File()), doc=OutputDocumentation(doc="Path to the final output file in text format"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scpred_Get_Std_Output_R_V0_1_0().translate("wdl", allow_empty_container=True)

