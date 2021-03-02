from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Scmap_Get_Std_Output_R_V0_1_0 = CommandToolBuilder(tool="scmap_get_std_output.R", base_command=["scmap_get_std_output.R"], inputs=[ToolInput(tag="in_predictions_file", input_type=File(optional=True), prefix="--predictions-file", doc=InputDocumentation(doc="Path to the predictions file in text format")), ToolInput(tag="in_output_table", input_type=File(optional=True), prefix="--output-table", doc=InputDocumentation(doc="Path to the final output file in text format")), ToolInput(tag="in_include_scores", input_type=Boolean(optional=True), prefix="--include-scores", doc=InputDocumentation(doc="Should prediction scores be included in output? Default: FALSE")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Path to the index object in .rds format (Optional; required to add dataset of origin to output table)")), ToolInput(tag="in_tool", input_type=String(optional=True), prefix="--tool", doc=InputDocumentation(doc="What tool produced output? scmap-cell or scmap-cluster")), ToolInput(tag="in_sim_col_name", input_type=String(optional=True), prefix="--sim-col-name", doc=InputDocumentation(doc="Column name of similarity scores"))], outputs=[ToolOutput(tag="out_output_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_table", type_hint=File()), doc=OutputDocumentation(doc="Path to the final output file in text format")), ToolOutput(tag="out_index", output_type=File(optional=True), selector=InputSelector(input_to_select="in_index", type_hint=File()), doc=OutputDocumentation(doc="Path to the index object in .rds format (Optional; required to add dataset of origin to output table)"))], container="quay.io/biocontainers/scmap-cli:0.0.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scmap_Get_Std_Output_R_V0_1_0().translate("wdl")

