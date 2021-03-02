from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Float

Solvate_Ions_Py_V0_1_0 = CommandToolBuilder(tool="solvate_ions.py", base_command=["solvate_ions.py"], inputs=[ToolInput(tag="in_input_pdb_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Input PDB file")), ToolInput(tag="in_topologie_gromacs_format", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Topologie in gromacs format .top")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output Directory")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="Output file name")), ToolInput(tag="in_distance_solute_box", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="Distance between the solute and the box")), ToolInput(tag="in_ion_concentration_mm", input_type=Float(optional=True), prefix="-C", doc=InputDocumentation(doc="Ion concentration (mM), default = 0.15 (150mM)"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output Directory")), ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Solvate_Ions_Py_V0_1_0().translate("wdl", allow_empty_container=True)

