from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean

Hotspot3D_Trans_V0_1_0 = CommandToolBuilder(tool="hotspot3d_trans", base_command=["hotspot3d", "trans"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Output directory of proximity files\nOPTIONAL")), ToolInput(tag="in_blat", input_type=Boolean(optional=True), prefix="--blat", doc=InputDocumentation(doc="Installation of blat to use (defaults to your system default)")), ToolInput(tag="in_gr_ch", input_type=Boolean(optional=True), prefix="--grch", doc=InputDocumentation(doc="Genome build (37 or 38), defaults to 38 or according to --release input")), ToolInput(tag="in_release", input_type=Boolean(optional=True), prefix="--release", doc=InputDocumentation(doc="Ensembl release verion (55-87), defaults to 87 or to the latest release according to --grch input\nNote that releases 55-75 correspond to GRCh37 & 76-87 correspond to GRCh38"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory of proximity files\nOPTIONAL"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hotspot3D_Trans_V0_1_0().translate("wdl", allow_empty_container=True)

