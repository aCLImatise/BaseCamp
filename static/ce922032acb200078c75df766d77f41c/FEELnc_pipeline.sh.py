from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Feelnc_Pipeline_Sh_V0_1_0 = CommandToolBuilder(tool="FEELnc_pipeline.sh", base_command=["FEELnc_pipeline.sh"], inputs=[ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="")), ToolInput(tag="in_out_name", input_type=String(optional=True), prefix="--outname", doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(optional=True), prefix="--genome", doc=InputDocumentation(doc="")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="")), ToolInput(tag="in_candidate", input_type=String(optional=True), prefix="--candidate", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Feelnc_Pipeline_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

