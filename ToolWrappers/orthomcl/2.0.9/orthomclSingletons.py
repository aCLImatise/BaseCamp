from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Orthomclsingletons_V0_1_0 = CommandToolBuilder(tool="orthomclSingletons", base_command=["orthomclSingletons"], inputs=[ToolInput(tag="in_good_proteins", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_groups_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_id_prefix", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orthomclsingletons_V0_1_0().translate("wdl", allow_empty_container=True)

