from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean

Hotspot3D_Prior_V0_1_0 = CommandToolBuilder(tool="hotspot3d_prior", base_command=["hotspot3d", "prior"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Output directory\nOPTIONAL")), ToolInput(tag="in_p_value_cut_off", input_type=Boolean(optional=True), prefix="--p-value-cutoff", doc=InputDocumentation(doc="p_value cutoff(<=), default is 0.05")), ToolInput(tag="in_three_d_distance_cut_off", input_type=Boolean(optional=True), prefix="--3d-distance-cutoff", doc=InputDocumentation(doc="3D distance cutoff (<= Angstroms), default is 20")), ToolInput(tag="in_linear_cut_off", input_type=Boolean(optional=True), prefix="--linear-cutoff", doc=InputDocumentation(doc="Linear distance cutoff (> peptides), default is 0"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory\nOPTIONAL"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hotspot3D_Prior_V0_1_0().translate("wdl", allow_empty_container=True)

