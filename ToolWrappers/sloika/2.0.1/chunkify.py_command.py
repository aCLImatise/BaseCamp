from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Chunkify_Py_Command_V0_1_0 = CommandToolBuilder(tool="chunkify.py_command", base_command=["chunkify.py", "command"], inputs=[ToolInput(tag="in_chunk_if_y_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chunkify_Py_Command_V0_1_0().translate("wdl", allow_empty_container=True)

