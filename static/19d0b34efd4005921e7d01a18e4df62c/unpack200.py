from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Unpack200_V0_1_0 = CommandToolBuilder(tool="unpack200", base_command=["unpack200"], inputs=[ToolInput(tag="in_override_transmitted_hinttrue", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="{h}, --deflate-hint={h}     override transmitted deflate hint:\ntrue, false, or keep (default)")), ToolInput(tag="in_remove_pack_file", input_type=Boolean(optional=True), prefix="--remove-pack-file", doc=InputDocumentation(doc="remove input file after unpacking")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="increase program verbosity")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="set verbosity to lowest level")), ToolInput(tag="in_output_given_log", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="{F}, --log-file={F}         output to the given log file,\nor '-' for standard output (default)"))], outputs=[ToolOutput(tag="out_output_given_log", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_given_log", type_hint=File()), doc=OutputDocumentation(doc="{F}, --log-file={F}         output to the given log file,\nor '-' for standard output (default)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unpack200_V0_1_0().translate("wdl", allow_empty_container=True)

