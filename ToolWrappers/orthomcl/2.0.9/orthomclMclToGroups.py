from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Orthomclmcltogroups_V0_1_0 = CommandToolBuilder(tool="orthomclMclToGroups", base_command=["orthomclMclToGroups"], inputs=[ToolInput(tag="in_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="a prefix to use when generating group ids.  For example OG2_")), ToolInput(tag="in_starting_id_num", input_type=String(), position=1, doc=InputDocumentation(doc="a number to start the id generating with.  For example 1000"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orthomclmcltogroups_V0_1_0().translate("wdl", allow_empty_container=True)

