from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Cpgreport_V0_1_0 = CommandToolBuilder(tool="_cpgreport", base_command=["_cpgreport"], inputs=[ToolInput(tag="in_score", input_type=Boolean(optional=True), prefix="-score", doc=InputDocumentation(doc="integer    [17] This sets the score for each CG\nsequence found. A value of 17 is more\nsensitive, but 28 has also been used with\nsome success. (Integer from 1 to 200)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Cpgreport_V0_1_0().translate("wdl", allow_empty_container=True)

