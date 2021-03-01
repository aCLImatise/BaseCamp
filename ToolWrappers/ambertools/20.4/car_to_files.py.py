from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Car_To_Files_Py_V0_1_0 = CommandToolBuilder(tool="car_to_files.py", base_command=["car_to_files.py"], inputs=[ToolInput(tag="in_input_file_name", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file name")), ToolInput(tag="in_output_mol_file", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="Output mol2 file name")), ToolInput(tag="in_output_pdb_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Output PDB file name")), ToolInput(tag="in_residue_name", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Residue name"))], outputs=[ToolOutput(tag="out_output_mol_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_mol_file", type_hint=File()), doc=OutputDocumentation(doc="Output mol2 file name")), ToolOutput(tag="out_output_pdb_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_pdb_file", type_hint=File()), doc=OutputDocumentation(doc="Output PDB file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Car_To_Files_Py_V0_1_0().translate("wdl", allow_empty_container=True)

