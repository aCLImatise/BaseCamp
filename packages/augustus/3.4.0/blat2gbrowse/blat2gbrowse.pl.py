from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Blat2Gbrowse_Pl_V0_1_0 = CommandToolBuilder(tool="blat2gbrowse.pl", base_command=["blat2gbrowse.pl"], inputs=[ToolInput(tag="in_old_format", input_type=Boolean(optional=True), prefix="--oldformat", doc=InputDocumentation(doc="output format for old GBrowse (before 2.0)")), ToolInput(tag="in_est_names", input_type=File(optional=True), prefix="--estnames", doc=InputDocumentation(doc="output file with the names of the ESTs")), ToolInput(tag="in_source", input_type=String(optional=True), prefix="--source", doc=InputDocumentation(doc="identifyier in the source column"))], outputs=[ToolOutput(tag="out_est_names", output_type=File(optional=True), selector=InputSelector(input_to_select="in_est_names", type_hint=File()), doc=OutputDocumentation(doc="output file with the names of the ESTs"))], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blat2Gbrowse_Pl_V0_1_0().translate("wdl")

