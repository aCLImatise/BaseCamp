from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sum_Chr_Mod_Py_V0_1_0 = CommandToolBuilder(tool="sum_chr_mod.py", base_command=["sum_chr_mod.py"], inputs=[ToolInput(tag="in_python", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sum_Chr_Mod_Py_V0_1_0().translate("wdl", allow_empty_container=True)

