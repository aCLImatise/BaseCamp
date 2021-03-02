from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Mol2Rtf_Py_V0_1_0 = CommandToolBuilder(tool="mol2rtf.py", base_command=["mol2rtf.py"], inputs=[ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="[--ref reference_rtf_file]")), ToolInput(tag="in_input_mol_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input mol2 file")), ToolInput(tag="in_output_rtf_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output RTF file")), ToolInput(tag="in_original_residue_name", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Original residue name")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="Reference RTF file"))], outputs=[ToolOutput(tag="out_output_rtf_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_rtf_file", type_hint=File()), doc=OutputDocumentation(doc="Output RTF file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mol2Rtf_Py_V0_1_0().translate("wdl", allow_empty_container=True)

