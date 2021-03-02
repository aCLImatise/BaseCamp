from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Structureharvester_Py_V0_1_0 = CommandToolBuilder(tool="structureHarvester.py", base_command=["structureHarvester.py"], inputs=[ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="--dir", doc=InputDocumentation(doc="The structure Results/ directory.")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="The out directory. If it does not exist, it will be\ncreated. Output written to summary.txt")), ToolInput(tag="in_evan_no", input_type=Boolean(optional=True), prefix="--evanno", doc=InputDocumentation(doc="If possible, performs the Evanno 2005 method. Written to\nevanno.txt. default=False")), ToolInput(tag="in_clump_p", input_type=Boolean(optional=True), prefix="--clumpp", doc=InputDocumentation(doc="Generates one K*.indfile for each value of K run, for use\nwith CLUMPP. default=False\n")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="The out directory. If it does not exist, it will be\ncreated. Output written to summary.txt"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Structureharvester_Py_V0_1_0().translate("wdl", allow_empty_container=True)

