from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Mdbrebase_V0_1_0 = CommandToolBuilder(tool="mdbrebase", base_command=["mdbrebase"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory to the mdb file, replace existing\none if ommited")), ToolInput(tag="in_verbose", input_type=File(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose with output (show individual path\nrewrites)")), ToolInput(tag="in_filenames", input_type=Boolean(optional=True), prefix="--filenames", doc=InputDocumentation(doc="Only operate on file names, not full absolute paths")), ToolInput(tag="in_regex", input_type=Boolean(optional=True), prefix="--regex", doc=InputDocumentation(doc="Input pattern is a regular expression")), ToolInput(tag="in_input_pattern", input_type=String(optional=True), prefix="--input-pattern", doc=InputDocumentation(doc="Input pattern to replace (must not be a prefix to\noutput-pattern)(required)")), ToolInput(tag="in_output_pattern", input_type=String(optional=True), prefix="--output-pattern", doc=InputDocumentation(doc="Output pattern to replace (required)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Be quiet with output (not show anything but errors)")), ToolInput(tag="in_assembly_to_fix", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory to the mdb file, replace existing\none if ommited")), ToolOutput(tag="out_verbose", output_type=File(optional=True), selector=InputSelector(input_to_select="in_verbose", type_hint=File()), doc=OutputDocumentation(doc="Be verbose with output (show individual path\nrewrites)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdbrebase_V0_1_0().translate("wdl", allow_empty_container=True)

