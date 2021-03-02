from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Paf_To_Carnac_Py_V0_1_0 = CommandToolBuilder(tool="paf_to_CARNAC.py", base_command=["paf_to_CARNAC.py"], inputs=[ToolInput(tag="in_file_dot_paf", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_dot_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paf_To_Carnac_Py_V0_1_0().translate("wdl", allow_empty_container=True)

