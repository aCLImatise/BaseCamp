from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Extractalign_V0_1_0 = CommandToolBuilder(tool="_extractalign", base_command=["_extractalign"], inputs=[ToolInput(tag="in_regions", input_type=Boolean(optional=True), prefix="-regions", doc=InputDocumentation(doc="range      [Whole sequence] Regions to extract.\nA set of regions is specified by a set of\npairs of positions.\nThe positions are integers.\nThey are separated by any non-digit,\nnon-alpha character.\nExamples of region specifications are:\n24-45, 56-78\n1:45, 67=99;765..888\n1,5,8,10,23,45,57,99"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Extractalign_V0_1_0().translate("wdl", allow_empty_container=True)

