from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ambmask_V0_1_0 = CommandToolBuilder(tool="ambmask", base_command=["ambmask"], inputs=[ToolInput(tag="in_prm_top", input_type=String(), position=0, doc=InputDocumentation(doc=": amber topology")), ToolInput(tag="in_in_pc_rd", input_type=String(), position=1, doc=InputDocumentation(doc=": amber (restrt) coordinates")), ToolInput(tag="in_prn_lev", input_type=String(), position=2, doc=InputDocumentation(doc=": amount of (debugging) info printed")), ToolInput(tag="in_format", input_type=String(), position=3, doc=InputDocumentation(doc=": output format: short|pdb|amber"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ambmask_V0_1_0().translate("wdl", allow_empty_container=True)

