from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String, Float

Mkbitmap_V0_1_0 = CommandToolBuilder(tool="mkbitmap", base_command=["mkbitmap"], inputs=[ToolInput(tag="in_license", input_type=Boolean(optional=True), prefix="--license", doc=InputDocumentation(doc="- print license info and exit")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="- output to file")), ToolInput(tag="in_no_defaults", input_type=Boolean(optional=True), prefix="--nodefaults", doc=InputDocumentation(doc="- turn off default options")), ToolInput(tag="in_invert", input_type=Boolean(optional=True), prefix="--invert", doc=InputDocumentation(doc="- invert the input (undo 'blackboard' effect)")), ToolInput(tag="in_filter", input_type=Int(optional=True), prefix="--filter", doc=InputDocumentation(doc="- apply highpass filter with radius n (default 4)")), ToolInput(tag="in_no_filter", input_type=Boolean(optional=True), prefix="--nofilter", doc=InputDocumentation(doc="- no highpass filtering")), ToolInput(tag="in_blur", input_type=String(optional=True), prefix="--blur", doc=InputDocumentation(doc="- apply lowpass filter with radius n (default: none)")), ToolInput(tag="in_scale", input_type=Int(optional=True), prefix="--scale", doc=InputDocumentation(doc="- scale by integer factor n (default 2)")), ToolInput(tag="in_linear", input_type=Boolean(optional=True), prefix="--linear", doc=InputDocumentation(doc="- use linear interpolation")), ToolInput(tag="in_cubic", input_type=Boolean(optional=True), prefix="--cubic", doc=InputDocumentation(doc="- use cubic interpolation (default)")), ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="- set threshold for bilevel conversion (default 0.45)")), ToolInput(tag="in_grey", input_type=Boolean(optional=True), prefix="--grey", doc=InputDocumentation(doc="- no bilevel conversion, output a greymap")), ToolInput(tag="in_file_dot_dot_dot", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="- output to file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mkbitmap_V0_1_0().translate("wdl", allow_empty_container=True)

