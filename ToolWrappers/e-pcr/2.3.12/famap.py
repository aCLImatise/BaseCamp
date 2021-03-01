from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Famap_V0_1_0 = CommandToolBuilder(tool="famap", base_command=["famap"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_hv", input_type=Boolean(optional=True), prefix="-hV", doc=InputDocumentation(doc="")), ToolInput(tag="in_nucleotide_ambiquity_codes_allowed", input_type=String(), position=0, doc=InputDocumentation(doc="- nucleotide with ambiquity codes allowed")), ToolInput(tag="in_nucleotide_ambiquity_codes_uppercase", input_type=String(), position=1, doc=InputDocumentation(doc="- nucleotide with ambiquity codes uppercase"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Famap_V0_1_0().translate("wdl", allow_empty_container=True)

