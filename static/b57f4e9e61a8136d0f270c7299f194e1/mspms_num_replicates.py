from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mspms_Num_Replicates_V0_1_0 = CommandToolBuilder(tool="mspms_num_replicates", base_command=["mspms", "num_replicates"], inputs=[ToolInput(tag="in_trees", input_type=Boolean(optional=True), prefix="--trees", doc=InputDocumentation(doc="")), ToolInput(tag="in_mutation_rate", input_type=String(optional=True), prefix="--mutation-rate", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="")), ToolInput(tag="in_ms_pms", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mspms_Num_Replicates_V0_1_0().translate("wdl", allow_empty_container=True)

