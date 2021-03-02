from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Amb2Gro_Top_Gro_Py_V0_1_0 = CommandToolBuilder(tool="amb2gro_top_gro.py", base_command=["amb2gro_top_gro.py"], inputs=[ToolInput(tag="in_prmtop_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Prmtop file")), ToolInput(tag="in_inpcrd_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Inpcrd file")), ToolInput(tag="in_gromacs_top_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="GROMACS top file")), ToolInput(tag="in_gromacs_gro_file", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="GROMACS gro file")), ToolInput(tag="in_pdb_file_generate", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="A PDB file to generate"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amb2Gro_Top_Gro_Py_V0_1_0().translate("wdl", allow_empty_container=True)

