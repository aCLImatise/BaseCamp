from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Grmpy_Vcf_Merge_Py_V0_1_0 = CommandToolBuilder(tool="grmpy_vcf_merge.py", base_command=["grmpy-vcf-merge.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input VCF file of variants.")), ToolInput(tag="in_gr_mpy", input_type=String(optional=True), prefix="--grmpy", doc=InputDocumentation(doc="JSON output from multigrmpy.py / grmpy")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Write logging information into file rather than to")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Set logging level to output errors only.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Log debug level events.")), ToolInput(tag="in_stderr", input_type=String(), position=0, doc=InputDocumentation(doc="--verbose             Raise logging level from warning to info."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Grmpy_Vcf_Merge_Py_V0_1_0().translate("wdl", allow_empty_container=True)

