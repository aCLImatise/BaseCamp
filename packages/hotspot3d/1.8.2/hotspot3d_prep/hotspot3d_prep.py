from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean

Hotspot3D_Prep_V0_1_0 = CommandToolBuilder(tool="hotspot3d_prep", base_command=["hotspot3d", "prep"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Output directory of proximity files\nOPTIONAL")), ToolInput(tag="in_start", input_type=Boolean(optional=True), prefix="--start", doc=InputDocumentation(doc="What step to start on ( calroi , statis , anno , trans , cosmic , prior ), default is calroi")), ToolInput(tag="in_blat", input_type=Boolean(optional=True), prefix="--blat", doc=InputDocumentation(doc="Installation of blat to use for trans (defaults to your system default)")), ToolInput(tag="in_gr_ch", input_type=Boolean(optional=True), prefix="--grch", doc=InputDocumentation(doc="Genome build (37 or 38), defaults to 38 or according to --release input")), ToolInput(tag="in_release", input_type=Boolean(optional=True), prefix="--release", doc=InputDocumentation(doc="Ensembl release verion (55-87), defaults to 87 or to the latest release according to --grch input\nNote that releases 55-75 correspond to GRCh37 & 76-87 correspond to GRCh38")), ToolInput(tag="in_p_value_cut_off", input_type=Boolean(optional=True), prefix="--p-value-cutoff", doc=InputDocumentation(doc="p_value cutoff(<=) for prior, default is 0.05")), ToolInput(tag="in_three_d_distance_cut_off", input_type=Boolean(optional=True), prefix="--3d-distance-cutoff", doc=InputDocumentation(doc="3D distance cutoff (<= Angstroms) for prior, default is 20")), ToolInput(tag="in_linear_cut_off", input_type=Boolean(optional=True), prefix="--linear-cutoff", doc=InputDocumentation(doc="Linear distance cutoff (> peptides) for prior, default is 0"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory of proximity files\nOPTIONAL"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hotspot3D_Prep_V0_1_0().translate("wdl", allow_empty_container=True)

