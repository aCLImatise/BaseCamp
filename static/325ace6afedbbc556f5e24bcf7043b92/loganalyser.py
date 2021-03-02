from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Loganalyser_V0_1_0 = CommandToolBuilder(tool="loganalyser", base_command=["loganalyser"], inputs=[ToolInput(tag="in_burnin", input_type=File(optional=True), prefix="--burnin", doc=InputDocumentation(doc="percentage of log file to disregard, default 10")), ToolInput(tag="in_one_line", input_type=File(optional=True), prefix="-oneline", doc=InputDocumentation(doc="only one line of output per file.\nHeader is generated from the first file only.\n(Implies quiet mode.)")), ToolInput(tag="in_quiet", input_type=String(optional=True), prefix="-quiet", doc=InputDocumentation(doc="mode.  Avoid printing status updates to stderr."))], outputs=[ToolOutput(tag="out_one_line", output_type=File(optional=True), selector=InputSelector(input_to_select="in_one_line", type_hint=File()), doc=OutputDocumentation(doc="only one line of output per file.\nHeader is generated from the first file only.\n(Implies quiet mode.)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Loganalyser_V0_1_0().translate("wdl", allow_empty_container=True)

