from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Aadder_Run_V0_1_0 = CommandToolBuilder(tool="aadder_run", base_command=["aadder-run"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="[string(s)]              Input SAM file(s) (.gz ok). Mandatory option.")), ToolInput(tag="in_index", input_type=Boolean(optional=True), prefix="--index", doc=InputDocumentation(doc="[string]                 AAdd index directory. Mandatory option.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="[string(s)]             Output file(s) (.gz ok) or directory. Mandatory option.")), ToolInput(tag="in_report_not_found", input_type=Boolean(optional=True), prefix="--reportNotFound", doc=InputDocumentation(doc="Report the names of DNA reference for which no functional accession is available. Default value: false.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Echo commandline options and be verbose. Default value: false."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="[string(s)]             Output file(s) (.gz ok) or directory. Mandatory option."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aadder_Run_V0_1_0().translate("wdl", allow_empty_container=True)

