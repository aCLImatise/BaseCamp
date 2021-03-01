from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Int

Create_Peptide_Py_V0_1_0 = CommandToolBuilder(tool="create_peptide.py", base_command=["create_peptide.py"], inputs=[ToolInput(tag="in_seq", input_type=String(optional=True), prefix="-seq", doc=InputDocumentation(doc="Peptide sequence")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output Directory")), ToolInput(tag="in_m_steps", input_type=Int(optional=True), prefix="-m_steps", doc=InputDocumentation(doc="Minimisation nsteps, default=1000")), ToolInput(tag="in_time", input_type=Int(optional=True), prefix="-time", doc=InputDocumentation(doc="Vacuum equilibration time(ns), default = 1ns"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output Directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Peptide_Py_V0_1_0().translate("wdl", allow_empty_container=True)

