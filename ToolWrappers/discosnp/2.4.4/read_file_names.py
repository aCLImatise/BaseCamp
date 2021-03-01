from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Read_File_Names_V0_1_0 = CommandToolBuilder(tool="read_file_names", base_command=["read_file_names"], inputs=[ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="-in", doc=InputDocumentation(doc="(1 arg) :    bank input"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_File_Names_V0_1_0().translate("wdl", allow_empty_container=True)

