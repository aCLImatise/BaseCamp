from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Directory

Insert_Mol_No_Vmd_Py_V0_1_0 = CommandToolBuilder(tool="insert_mol_no_vmd.py", base_command=["insert_mol_no_vmd.py"], inputs=[ToolInput(tag="in_f_sys", input_type=File(optional=True), prefix="-fsys", doc=InputDocumentation(doc="Input PDB file of the system")), ToolInput(tag="in_p_sys", input_type=String(optional=True), prefix="-psys", doc=InputDocumentation(doc="Topologie in gromacs format .top of the system")), ToolInput(tag="in_fmol", input_type=File(optional=True), prefix="-fmol", doc=InputDocumentation(doc="Input PDB file of the molecule to insert")), ToolInput(tag="in_pmol", input_type=String(optional=True), prefix="-pmol", doc=InputDocumentation(doc="Topologie in gromacs format .top of the molecule to insert")), ToolInput(tag="in_nmol", input_type=Int(optional=True), prefix="-nmol", doc=InputDocumentation(doc="Number of molecule to insert")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output Directory")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="Output file name"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output Directory")), ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Insert_Mol_No_Vmd_Py_V0_1_0().translate("wdl", allow_empty_container=True)

