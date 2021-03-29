from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Kreport2Mpa_Py_V0_1_0 = CommandToolBuilder(tool="kreport2mpa.py", base_command=["kreport2mpa.py"], inputs=[ToolInput(tag="in_report_file", input_type=File(optional=True), prefix="--report-file", doc=InputDocumentation(doc="Input kraken report file for converting")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output mpa-report file name")), ToolInput(tag="in_display_header", input_type=Boolean(optional=True), prefix="--display-header", doc=InputDocumentation(doc="Include header [Kraken report filename] in mpa-report\nfile [default: no header]")), ToolInput(tag="in_read_count", input_type=Boolean(optional=True), prefix="--read_count", doc=InputDocumentation(doc="Use read count for output [default]")), ToolInput(tag="in_percentages", input_type=Boolean(optional=True), prefix="--percentages", doc=InputDocumentation(doc="Use percentages for output [instead of reads]")), ToolInput(tag="in_intermediate_ranks", input_type=Boolean(optional=True), prefix="--intermediate-ranks", doc=InputDocumentation(doc="Include non-traditional taxonomic ranks in output")), ToolInput(tag="in_no_intermediate_ranks", input_type=Boolean(optional=True), prefix="--no-intermediate-ranks", doc=InputDocumentation(doc="Do not include non-traditional taxonomic ranks in\noutput [default]\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output mpa-report file name"))], container="quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kreport2Mpa_Py_V0_1_0().translate("wdl")

