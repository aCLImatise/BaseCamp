from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Arb_2_Bin_V0_1_0 = CommandToolBuilder(tool="arb_2_bin", base_command=["arb_2_bin"], inputs=[ToolInput(tag="in_create_map_file", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="create map file too")), ToolInput(tag="in_try_repair_database", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="try to repair destroyed database")), ToolInput(tag="in_optimize_database_using", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[tree_xxx]  optimize database using tree_xxx or largest tree"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_2_Bin_V0_1_0().translate("wdl", allow_empty_container=True)

