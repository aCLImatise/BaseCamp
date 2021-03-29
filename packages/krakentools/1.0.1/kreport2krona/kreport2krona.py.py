from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Kreport2Krona_Py_V0_1_0 = CommandToolBuilder(tool="kreport2krona.py", base_command=["kreport2krona.py"], inputs=[ToolInput(tag="in_report_file", input_type=File(optional=True), prefix="--report-file", doc=InputDocumentation(doc="Input kraken report file for converting")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output krona-report file name")), ToolInput(tag="in_intermediate_ranks", input_type=Boolean(optional=True), prefix="--intermediate-ranks", doc=InputDocumentation(doc="Include non-traditional taxonomic ranks in output")), ToolInput(tag="in_no_intermediate_ranks", input_type=Boolean(optional=True), prefix="--no-intermediate-ranks", doc=InputDocumentation(doc="Do not include non-traditional taxonomic ranks in\noutput [default: no intermediate ranks]\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output krona-report file name"))], container="quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kreport2Krona_Py_V0_1_0().translate("wdl")

