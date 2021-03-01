from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Lavtopsl_V0_1_0 = CommandToolBuilder(tool="lavToPsl", base_command=["lavToPsl"], inputs=[ToolInput(tag="in_target_strand", input_type=String(optional=True), prefix="-target-strand", doc=InputDocumentation(doc="set the target strand to c (default is no strand)")), ToolInput(tag="in_bed", input_type=String(optional=True), prefix="-bed", doc=InputDocumentation(doc="bed instead of psl")), ToolInput(tag="in_score_file", input_type=File(optional=True), prefix="-scoreFile", doc=InputDocumentation(doc="output lav scores to side file, such that\neach psl line in out.psl is matched by a score line.\n")), ToolInput(tag="in_in_dot_lav", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_score_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_score_file", type_hint=File()), doc=OutputDocumentation(doc="output lav scores to side file, such that\neach psl line in out.psl is matched by a score line.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lavtopsl_V0_1_0().translate("wdl", allow_empty_container=True)

