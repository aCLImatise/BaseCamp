from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Kreport2Mpa_Py_V0_1_0 = CommandToolBuilder(tool="kreport2mpa.py", base_command=["kreport2mpa.py"], inputs=[ToolInput(tag="in_report_file", input_type=File(optional=True), prefix="--report-file", doc=InputDocumentation(doc="Input kraken report file for converting")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output mpa-report file name")), ToolInput(tag="in_display_header", input_type=Boolean(optional=True), prefix="--display-header", doc=InputDocumentation(doc="Include header [Kraken report filename] in mpa-report")), ToolInput(tag="in_no_intermediate_ranks", input_type=Boolean(optional=True), prefix="--no-intermediate-ranks", doc=InputDocumentation(doc="Do not include non-traditional taxonomic ranks in\noutput\n")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="--intermediate-ranks  Include non-traditional taxonomic ranks in output"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output mpa-report file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kreport2Mpa_Py_V0_1_0().translate("wdl", allow_empty_container=True)

