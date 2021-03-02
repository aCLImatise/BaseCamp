from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Batchman_V0_1_0 = CommandToolBuilder(tool="batchman", base_command=["batchman"], inputs=[ToolInput(tag="in_read_input_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc=": read input from <file>")), ToolInput(tag="in_logfile_write_output", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc=": (logfile) write output to <file>")), ToolInput(tag="in_parseonly_just_check", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": parse-only; just check the syntax, do not execute")), ToolInput(tag="in_quiet_mode_warnings", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": quiet mode; neither warnings nor errors are printed")), ToolInput(tag="in__suppress_warnings", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": suppress warnings"))], outputs=[ToolOutput(tag="out_logfile_write_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_logfile_write_output", type_hint=File()), doc=OutputDocumentation(doc=": (logfile) write output to <file>"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Batchman_V0_1_0().translate("wdl", allow_empty_container=True)

