from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Gmx_Trjconv_Str_V0_1_0 = CommandToolBuilder(tool="gmx_trjconv_str", base_command=["gmx_trjconv_str"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_index_path", input_type=File(optional=True), prefix="--input_index_path", doc=InputDocumentation(doc="Path to the GROMACS index file. Accepted formats: ndx.")), ToolInput(tag="in_input_structure_path", input_type=File(optional=True), prefix="--input_structure_path", doc=InputDocumentation(doc="Path to the input structure file. Accepted formats: xtc, trr, cpt, gro, g96, pdb, tng.")), ToolInput(tag="in_input_top_path", input_type=File(optional=True), prefix="--input_top_path", doc=InputDocumentation(doc="Path to the GROMACS input topology file. Accepted formats: tpr, gro, g96, pdb, brk, ent.")), ToolInput(tag="in_output_str_path", input_type=File(optional=True), prefix="--output_str_path", doc=InputDocumentation(doc="Path to the output file. Accepted formats: xtc, trr, gro, g96, pdb, tng.\n"))], outputs=[ToolOutput(tag="out_output_str_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_str_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the output file. Accepted formats: xtc, trr, gro, g96, pdb, tng.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gmx_Trjconv_Str_V0_1_0().translate("wdl", allow_empty_container=True)

