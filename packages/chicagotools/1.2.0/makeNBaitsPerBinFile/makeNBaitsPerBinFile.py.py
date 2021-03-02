from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Makenbaitsperbinfile_Py_V0_1_0 = CommandToolBuilder(tool="makeNBaitsPerBinFile.py", base_command=["makeNBaitsPerBinFile.py"], inputs=[ToolInput(tag="in_remove_adjacent", input_type=String(optional=True), prefix="--removeAdjacent", doc=InputDocumentation(doc="")), ToolInput(tag="in_binsize", input_type=Int(optional=True), prefix="--binsize", doc=InputDocumentation(doc="")), ToolInput(tag="in_max_l_brown_est", input_type=Int(optional=True), prefix="--maxLBrownEst", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makenbaitsperbinfile_Py_V0_1_0().translate("wdl", allow_empty_container=True)

