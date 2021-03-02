from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Rgi_Jsontab_V0_1_0 = CommandToolBuilder(tool="rgi_jsontab", base_command=["rgi_jsontab"], inputs=[ToolInput(tag="in_a_file", input_type=File(optional=True), prefix="--afile", doc=InputDocumentation(doc="must be a json file generated from RGI in JSON or gzip\nformat e.g out.json, out.json.gz")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out_file", doc=InputDocumentation(doc="Output Tab-delimited file (default=dataSummary)")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="include help menu. Options are OFF or ON (default =\nOFF for no help)\n"))], outputs=[ToolOutput(tag="out_a_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_a_file", type_hint=File()), doc=OutputDocumentation(doc="must be a json file generated from RGI in JSON or gzip\nformat e.g out.json, out.json.gz")), ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="Output Tab-delimited file (default=dataSummary)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Jsontab_V0_1_0().translate("wdl", allow_empty_container=True)

