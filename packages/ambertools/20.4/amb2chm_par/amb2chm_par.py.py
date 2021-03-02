from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Amb2Chm_Par_Py_V0_1_0 = CommandToolBuilder(tool="amb2chm_par.py", base_command=["amb2chm_par.py"], inputs=[ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[--nat use_new_attype]")), ToolInput(tag="in_the_input_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="The input file")), ToolInput(tag="in_input_file_parameter", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="The input file is a parameter file (1) or just contains file\nnames (2) [default: 2]")), ToolInput(tag="in_nat", input_type=Int(optional=True), prefix="--nat", doc=InputDocumentation(doc="Whether to perform atom type transfer [0 means no, 1 means\nyes, default: 1]\n"))], outputs=[ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc="[--nat use_new_attype]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amb2Chm_Par_Py_V0_1_0().translate("wdl", allow_empty_container=True)

