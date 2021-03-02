from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pomoxis_Path_V0_1_0 = CommandToolBuilder(tool="pomoxis_path", base_command=["pomoxis_path"], inputs=[ToolInput(tag="in_program", input_type=String(), position=0, doc=InputDocumentation(doc="name of program."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pomoxis_Path_V0_1_0().translate("wdl", allow_empty_container=True)

