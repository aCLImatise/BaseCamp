from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Treebest_Mmerge_V0_1_0 = CommandToolBuilder(tool="treebest_mmerge", base_command=["treebest", "mmerge"], inputs=[ToolInput(tag="in_reroot", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="reroot")), ToolInput(tag="in_species_tree", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="species tree [default taxa tree]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Mmerge_V0_1_0().translate("wdl", allow_empty_container=True)

