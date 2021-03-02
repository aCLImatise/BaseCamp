from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Combine_Tool_Outputs_R_V0_1_0 = CommandToolBuilder(tool="combine_tool_outputs.R", base_command=["combine_tool_outputs.R"], inputs=[ToolInput(tag="in_input_dir", input_type=File(optional=True), prefix="--input-dir", doc=InputDocumentation(doc="Path to the directory with standardised output .tsv files from\nmultiple classifiers. It is expected that input files follow\nthe format: A_B_final-labs.tsv, where A is dataset or origin and\nB is classifier used to obtain predictions.")), ToolInput(tag="in_top_labels_num", input_type=Int(optional=True), prefix="--top-labels-num", doc=InputDocumentation(doc="Number of top labels to keep")), ToolInput(tag="in_exclusions", input_type=File(optional=True), prefix="--exclusions", doc=InputDocumentation(doc="Path to the yaml file with excluded terms. Must contain fields\n'unlabelled' and 'trivial_terms'")), ToolInput(tag="in_scores", input_type=Boolean(optional=True), prefix="--scores", doc=InputDocumentation(doc="Boolean: Are prediction scores available for the given method?\nDefault: FALSE")), ToolInput(tag="in_output_table", input_type=File(optional=True), prefix="--output-table", doc=InputDocumentation(doc="Path to the output table in text format"))], outputs=[ToolOutput(tag="out_output_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_table", type_hint=File()), doc=OutputDocumentation(doc="Path to the output table in text format"))], container="quay.io/biocontainers/cell-types-analysis:0.1.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combine_Tool_Outputs_R_V0_1_0().translate("wdl")

