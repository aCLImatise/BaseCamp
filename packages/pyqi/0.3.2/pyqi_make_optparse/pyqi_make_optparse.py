from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float, File

Pyqi_Make_Optparse_V0_1_0 = CommandToolBuilder(tool="pyqi_make_optparse", base_command=["pyqi", "make-optparse"], inputs=[ToolInput(tag="in_author", input_type=String(optional=True), prefix="--author", doc=InputDocumentation(doc="author/maintainer name [default: none]")), ToolInput(tag="in_email", input_type=String(optional=True), prefix="--email", doc=InputDocumentation(doc="maintainer email address [default: none]")), ToolInput(tag="in_license", input_type=String(optional=True), prefix="--license", doc=InputDocumentation(doc="license (e.g., BSD) [default: none]")), ToolInput(tag="in_copyright", input_type=Int(optional=True), prefix="--copyright", doc=InputDocumentation(doc="copyright (e.g., Copyright 2013, The pyqi project)\n[default: none]")), ToolInput(tag="in_config_version", input_type=Float(optional=True), prefix="--config-version", doc=InputDocumentation(doc="version (e.g., 0.1) [default: none]")), ToolInput(tag="in_credits", input_type=String(optional=True), prefix="--credits", doc=InputDocumentation(doc="comma-separated list of other authors [default: none]")), ToolInput(tag="in_command", input_type=String(optional=True), prefix="--command", doc=InputDocumentation(doc="an existing Command [REQUIRED]")), ToolInput(tag="in_command_module", input_type=String(optional=True), prefix="--command-module", doc=InputDocumentation(doc="the Command source module [REQUIRED]")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output-fp", doc=InputDocumentation(doc="output filepath to store generated optparse Python\nconfiguration file [REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fp", type_hint=File()), doc=OutputDocumentation(doc="output filepath to store generated optparse Python\nconfiguration file [REQUIRED]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyqi_Make_Optparse_V0_1_0().translate("wdl", allow_empty_container=True)

