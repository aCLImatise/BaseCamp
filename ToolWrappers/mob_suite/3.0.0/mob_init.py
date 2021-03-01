from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, Float

Mob_Init_V0_1_0 = CommandToolBuilder(tool="mob_init", base_command=["mob_init"], inputs=[ToolInput(tag="in_database_directory", input_type=Directory(optional=True), prefix="--database_directory", doc=InputDocumentation(doc="Directory to download databases to. Defaults to\n/usr/local/lib/python3.8/site-\npackages/mob_suite/databases")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set the verbosity level. Can by used multiple times")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="")), ToolInput(tag="in_three_dot_zero_dot_zero", input_type=Float(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mob_Init_V0_1_0().translate("wdl", allow_empty_container=True)

