from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Crisprtools_Merge_V0_1_0 = CommandToolBuilder(tool="crisprtools_merge", base_command=["crisprtools", "merge"], inputs=[ToolInput(tag="in_output_file_", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file  [default: crisprtools_merged.crispr]")), ToolInput(tag="in_sanitise_names_contains", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="sanitise the names so that the resulting output file contains completely unique group IDs"))], outputs=[ToolOutput(tag="out_output_file_", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_", type_hint=File()), doc=OutputDocumentation(doc="output file  [default: crisprtools_merged.crispr]")), ToolOutput(tag="out_sanitise_names_contains", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sanitise_names_contains", type_hint=File()), doc=OutputDocumentation(doc="sanitise the names so that the resulting output file contains completely unique group IDs"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crisprtools_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

