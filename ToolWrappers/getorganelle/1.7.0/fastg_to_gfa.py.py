from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Fastg_To_Gfa_Py_V0_1_0 = CommandToolBuilder(tool="fastg_to_gfa.py", base_command=["fastg_to_gfa.py"], inputs=[ToolInput(tag="in_fastgtwogfadotpy", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastg_To_Gfa_Py_V0_1_0().translate("wdl", allow_empty_container=True)

