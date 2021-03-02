from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Fastaptamer_Enrich_V0_1_0 = CommandToolBuilder(tool="fastaptamer_enrich", base_command=["fastaptamer_enrich"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_z", input_type=File(optional=True), prefix="-z", doc=InputDocumentation(doc="")), ToolInput(tag="in_y", input_type=File(optional=True), prefix="-y", doc=InputDocumentation(doc="")), ToolInput(tag="in_x", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_aptamer_cluster_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[-o OUTFILE]    = Plain text output file with tab separated values. REQUIRED"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastaptamer_Enrich_V0_1_0().translate("wdl", allow_empty_container=True)

