from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Wtpre_V0_1_0 = CommandToolBuilder(tool="wtpre", base_command=["wtpre"], inputs=[ToolInput(tag="in_output_processed_reads", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output of processed reads, [-]")), ToolInput(tag="in_force_overwrite_output", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Force overwrite output file")), ToolInput(tag="in_keep_subreads_one", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="Keep all subreads in a well, default: the longest one")), ToolInput(tag="in_jack_knife_read", input_type=Int(optional=True), prefix="-J", doc=InputDocumentation(doc="Jack knife of read length, [0]")), ToolInput(tag="in_clip_bases_ends", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="Clip <-c> bases at both ends, [0]")), ToolInput(tag="in_change_read_name", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Change the read name into {'%s%012d', <-p>}, [pb]"))], outputs=[ToolOutput(tag="out_force_overwrite_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite_output", type_hint=File()), doc=OutputDocumentation(doc="Force overwrite output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wtpre_V0_1_0().translate("wdl", allow_empty_container=True)

