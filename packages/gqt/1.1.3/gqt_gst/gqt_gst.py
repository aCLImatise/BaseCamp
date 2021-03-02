from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Gqt_Gst_V0_1_0 = CommandToolBuilder(tool="gqt_gst", base_command=["gqt", "gst"], inputs=[ToolInput(tag="in_d", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="\")), ToolInput(tag="in_direcory_name_remote", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="direcory name for remote files (default ./)")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="(requried for pca-shared)\")), ToolInput(tag="in_l", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="(requried for pca-shared)\")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_l", output_type=File(optional=True), selector=InputSelector(input_to_select="in_l", type_hint=File()), doc=OutputDocumentation(doc="(requried for pca-shared)\"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gqt_Gst_V0_1_0().translate("wdl", allow_empty_container=True)

