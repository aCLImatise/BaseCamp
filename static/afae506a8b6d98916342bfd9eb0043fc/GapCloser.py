from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Float, String

Gapcloser_V0_1_0 = CommandToolBuilder(tool="GapCloser", base_command=["GapCloser"], inputs=[ToolInput(tag="in_string_input_name", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="<string>        input scaffold file name, required.")), ToolInput(tag="in_string_library_name", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="<string>        input library info file name, required.")), ToolInput(tag="in_string_output_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="<string>        output file name, required.")), ToolInput(tag="in_int_maximum_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="<int>           maximum read length (<=155), default=100.")), ToolInput(tag="in_int_overlap_param", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="<int>           overlap param(<=31), default=25.")), ToolInput(tag="in_int_number_default", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="<int>           thread number, default=1.")), ToolInput(tag="in_one_dot_one_two", input_type=Float(), position=0, doc=InputDocumentation(doc="Contact:")), ToolInput(tag="in_soap_at_genomics_dot_org_dot_cn", input_type=String(), position=1, doc=InputDocumentation(doc="Usage:"))], outputs=[ToolOutput(tag="out_string_output_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_string_output_name", type_hint=File()), doc=OutputDocumentation(doc="<string>        output file name, required."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gapcloser_V0_1_0().translate("wdl", allow_empty_container=True)

