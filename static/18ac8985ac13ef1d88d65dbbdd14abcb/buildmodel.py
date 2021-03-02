from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Buildmodel_V0_1_0 = CommandToolBuilder(tool="buildmodel", base_command=["buildmodel"], inputs=[ToolInput(tag="in_train", input_type=File(optional=True), prefix="-train", doc=InputDocumentation(doc=": File to read sequences from.")), ToolInput(tag="in_insert", input_type=File(optional=True), prefix="-insert", doc=InputDocumentation(doc="or -i <string>: where string is a parameter file.")), ToolInput(tag="in_dump_parameters", input_type=File(optional=True), prefix="-dump_parameters", doc=InputDocumentation(doc="<0, 1, or 2>: Default [0] means only modified parameters are\nprinted to output file. [1] outputs all parameters to output file.\n[2] prints all default parameters to the file default.params.\n")), ToolInput(tag="in_option", input_type=String(optional=True), prefix="-option", doc=InputDocumentation(doc="")), ToolInput(tag="in_run_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_dump_parameters", output_type=File(optional=True), selector=InputSelector(input_to_select="in_dump_parameters", type_hint=File()), doc=OutputDocumentation(doc="<0, 1, or 2>: Default [0] means only modified parameters are\nprinted to output file. [1] outputs all parameters to output file.\n[2] prints all default parameters to the file default.params.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Buildmodel_V0_1_0().translate("wdl", allow_empty_container=True)

