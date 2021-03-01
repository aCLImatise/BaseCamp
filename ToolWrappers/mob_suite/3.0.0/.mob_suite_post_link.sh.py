from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

_Mob_Suite_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".mob_suite_post_link.sh", base_command=[".mob_suite-post-link.sh"], inputs=[ToolInput(tag="in_d_load", input_type=String(), position=0, doc=InputDocumentation(doc="Upload   Total   Spent    Left  Speed"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Mob_Suite_Post_Link_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

