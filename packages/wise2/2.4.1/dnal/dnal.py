from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dnal_V0_1_0 = CommandToolBuilder(tool="dnal", base_command=["dnal"], inputs=[ToolInput(tag="in_match", input_type=Boolean(optional=True), prefix="-match", doc=InputDocumentation(doc="[4]  Match score")), ToolInput(tag="in_mis", input_type=Boolean(optional=True), prefix="-mis", doc=InputDocumentation(doc="[-1] MisMatch score")), ToolInput(tag="in_gap", input_type=Boolean(optional=True), prefix="-gap", doc=InputDocumentation(doc="[5]  Gap penalty")), ToolInput(tag="in_ext", input_type=Boolean(optional=True), prefix="-ext", doc=InputDocumentation(doc="[1]  Gap extension penalty")), ToolInput(tag="in_bound", input_type=Boolean(optional=True), prefix="-bound", doc=InputDocumentation(doc="[local/global/edge]  Start/End policy")), ToolInput(tag="in_kbyte", input_type=Boolean(optional=True), prefix="-kbyte", doc=InputDocumentation(doc="[100000] Number of kbytes allowed in main memory")), ToolInput(tag="in_dy_mem", input_type=Boolean(optional=True), prefix="-dymem", doc=InputDocumentation(doc="memory style [default/linear/explicit]")), ToolInput(tag="in_dy_debug", input_type=Boolean(optional=True), prefix="-dydebug", doc=InputDocumentation(doc="drop into dynamite dp matrix debugger")), ToolInput(tag="in_pal_debug", input_type=Boolean(optional=True), prefix="-paldebug", doc=InputDocumentation(doc="print PackAln after debugger run if used")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="show version and compile info")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="-silent", doc=InputDocumentation(doc="No messages    on stderr")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="No report/info on stderr")), ToolInput(tag="in_error_off_std", input_type=String(optional=True), prefix="-erroroffstd", doc=InputDocumentation(doc="warning messages to stderr")), ToolInput(tag="in_error_log", input_type=Boolean(optional=True), prefix="-errorlog", doc=InputDocumentation(doc="[file] Log warning messages to file")), ToolInput(tag="in_error_style", input_type=Boolean(optional=True), prefix="-errorstyle", doc=InputDocumentation(doc="[server/program] style of error reporting (default program)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnal_V0_1_0().translate("wdl", allow_empty_container=True)

