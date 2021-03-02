from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Seedrand_Py_N_V0_1_0 = CommandToolBuilder(tool="seedRand.py_n", base_command=["seedRand.py", "n"], inputs=[ToolInput(tag="in_see_dr_and_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seed", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seedrand_Py_N_V0_1_0().translate("wdl", allow_empty_container=True)

