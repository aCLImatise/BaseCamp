from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Cnx_Py_V0_1_0 = CommandToolBuilder(tool="cnx.py", base_command=["cnx.py"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name (json format)")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="pass a BAM file for aligner name/version extraction")), ToolInput(tag="in_extract", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_caller", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name (json format)"))], container="quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnx_Py_V0_1_0().translate("wdl")

