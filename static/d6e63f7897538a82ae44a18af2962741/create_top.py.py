from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean

Create_Top_Py_V0_1_0 = CommandToolBuilder(tool="create_top.py", base_command=["create_top.py"], inputs=[ToolInput(tag="in_input_pdb_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Input PDB file")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_v_site", input_type=Boolean(optional=True), prefix="-vsite", doc=InputDocumentation(doc="Use virtual site for hydrogens"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container="quay.io/biocontainers/gromacs_py:1.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Top_Py_V0_1_0().translate("wdl")

