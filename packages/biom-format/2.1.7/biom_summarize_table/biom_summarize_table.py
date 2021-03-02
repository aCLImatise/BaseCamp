from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Biom_Summarize_Table_V0_1_0 = CommandToolBuilder(tool="biom_summarize_table", base_command=["biom", "summarize-table"], inputs=[ToolInput(tag="in_input_fp", input_type=File(optional=True), prefix="--input-fp", doc=InputDocumentation(doc="The input BIOM table  [required]")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output-fp", doc=InputDocumentation(doc="An output file-path")), ToolInput(tag="in_qualitative", input_type=Boolean(optional=True), prefix="--qualitative", doc=InputDocumentation(doc="Present counts as number of unique observation ids per\nsample, rather than counts of observations per sample.")), ToolInput(tag="in_observations", input_type=Boolean(optional=True), prefix="--observations", doc=InputDocumentation(doc="Summarize over observations")), ToolInput(tag="in_observations_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Example usage:"))], outputs=[ToolOutput(tag="out_output_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fp", type_hint=File()), doc=OutputDocumentation(doc="An output file-path"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biom_Summarize_Table_V0_1_0().translate("wdl", allow_empty_container=True)

