from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Pscan_V0_1_0 = CommandToolBuilder(tool="_pscan", base_command=["_pscan"], inputs=[ToolInput(tag="in_emin", input_type=Boolean(optional=True), prefix="-emin", doc=InputDocumentation(doc="integer    [2] Minimum number of elements per\nfingerprint (Integer from 1 to 20)")), ToolInput(tag="in_emax", input_type=Boolean(optional=True), prefix="-emax", doc=InputDocumentation(doc="integer    [20] Maximum number of elements per\nfingerprint (Integer up to 20)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pscan_V0_1_0().translate("wdl", allow_empty_container=True)

