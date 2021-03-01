from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Gsort_Genome_V0_1_0 = CommandToolBuilder(tool="gsort_GENOME", base_command=["gsort", "GENOME"], inputs=[ToolInput(tag="in_parent", input_type=Boolean(optional=True), prefix="--parent", doc=InputDocumentation(doc="")), ToolInput(tag="in_memory", input_type=String(optional=True), prefix="--memory", doc=InputDocumentation(doc="")), ToolInput(tag="in_chromosome_mappings", input_type=String(optional=True), prefix="--chromosomemappings", doc=InputDocumentation(doc="")), ToolInput(tag="in_g_sort", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsort_Genome_V0_1_0().translate("wdl", allow_empty_container=True)

