from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Amos2Frg_V0_1_0 = CommandToolBuilder(tool="amos2frg", base_command=["amos2frg"], inputs=[ToolInput(tag="in_extension", input_type=String(), position=0, doc=InputDocumentation(doc="otherwise -i and -o are those specified in the command line"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amos2Frg_V0_1_0().translate("wdl", allow_empty_container=True)

