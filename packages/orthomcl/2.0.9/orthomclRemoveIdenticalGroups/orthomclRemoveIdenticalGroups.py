from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Orthomclremoveidenticalgroups_V0_1_0 = CommandToolBuilder(tool="orthomclRemoveIdenticalGroups", base_command=["orthomclRemoveIdenticalGroups"], inputs=[ToolInput(tag="in_groups_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_groups_dot_txt", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orthomclremoveidenticalgroups_V0_1_0().translate("wdl", allow_empty_container=True)

