from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Get_Blast_Hits_Sh_V0_1_0 = CommandToolBuilder(tool="get_blast_hits.sh", base_command=["get_blast_hits.sh"], inputs=[ToolInput(tag="in_run_command_is", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Don't run command if input is empty")), ToolInput(tag="in_input_separated_nul", input_type=Boolean(optional=True), prefix="-0", doc=InputDocumentation(doc="Input is separated by NUL characters")), ToolInput(tag="in_print_command_stderr", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Print the command on stderr before execution")), ToolInput(tag="in_str_stops_processing", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="[STR] STR stops input processing")), ToolInput(tag="in_pass_more_args", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="Pass no more than N args to PROG")), ToolInput(tag="in_pass_command_line", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Pass command line of no more than N bytes")), ToolInput(tag="in_exit_size_exceeded", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Exit if size is exceeded")), ToolInput(tag="in_xargs", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Blast_Hits_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

