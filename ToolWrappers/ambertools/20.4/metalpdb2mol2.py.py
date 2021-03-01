from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Metalpdb2Mol2_Py_V0_1_0 = CommandToolBuilder(tool="metalpdb2mol2.py", base_command=["metalpdb2mol2.py"], inputs=[ToolInput(tag="in_input_pdb_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input PDB file")), ToolInput(tag="in_output_mol_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output mol2 file")), ToolInput(tag="in_charge_metal_ion", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Charge of the metal ion"))], outputs=[ToolOutput(tag="out_output_mol_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_mol_file", type_hint=File()), doc=OutputDocumentation(doc="Output mol2 file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metalpdb2Mol2_Py_V0_1_0().translate("wdl", allow_empty_container=True)

