from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Get_Tool_Pvals_R_V0_1_0 = CommandToolBuilder(tool="get_tool_pvals.R", base_command=["get_tool_pvals.R"], inputs=[ToolInput(tag="in_input_table", input_type=File(optional=True), prefix="--input-table", doc=InputDocumentation(doc="Path to the table of tool statistics from get_tool_performance_table.R")), ToolInput(tag="in_emp_dist_list", input_type=File(optional=True), prefix="--emp-dist-list", doc=InputDocumentation(doc="Path to the list of empirical distributions in .rds format")), ToolInput(tag="in_output_table", input_type=File(optional=True), prefix="--output-table", doc=InputDocumentation(doc="Path to the modified output table in text format"))], outputs=[ToolOutput(tag="out_output_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_table", type_hint=File()), doc=OutputDocumentation(doc="Path to the modified output table in text format"))], container="quay.io/biocontainers/cell-types-analysis:0.1.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Tool_Pvals_R_V0_1_0().translate("wdl")

