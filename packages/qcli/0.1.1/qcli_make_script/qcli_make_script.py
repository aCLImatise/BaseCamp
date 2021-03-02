from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Qcli_Make_Script_V0_1_0 = CommandToolBuilder(tool="qcli_make_script", base_command=["qcli_make_script"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_author_name", input_type=String(optional=True), prefix="--author_name", doc=InputDocumentation(doc="The script author's (probably you) name to be included\nin the header variables. This will typically need to\nbe enclosed  in quotes to handle spaces.\n[default:AUTHOR_NAME]")), ToolInput(tag="in_author_email", input_type=String(optional=True), prefix="--author_email", doc=InputDocumentation(doc="The script author's (probably you) e-mail address to\nbe included in the header variables.\n[default:AUTHOR_EMAIL]")), ToolInput(tag="in_copyright", input_type=Int(optional=True), prefix="--copyright", doc=InputDocumentation(doc="The copyright information to be included in the header\nvariables. [default:Copyright 2013, The BiPy project]")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output_fp", doc=InputDocumentation(doc="The output filepath. [REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fp", type_hint=File()), doc=OutputDocumentation(doc="The output filepath. [REQUIRED]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qcli_Make_Script_V0_1_0().translate("wdl", allow_empty_container=True)

