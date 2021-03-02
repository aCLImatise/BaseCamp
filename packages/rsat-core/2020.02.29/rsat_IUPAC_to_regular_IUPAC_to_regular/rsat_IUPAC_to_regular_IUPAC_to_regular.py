from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rsat_Iupac_To_Regular_Iupac_To_Regular_V0_1_0 = CommandToolBuilder(tool="rsat_IUPAC_to_regular_IUPAC_to_regular", base_command=["rsat", "IUPAC-to-regular", "IUPAC-to-regular"], inputs=[ToolInput(tag="in_age", input_type=Boolean(optional=True), prefix="--u", doc=InputDocumentation(doc="[cg]age"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Iupac_To_Regular_Iupac_To_Regular_V0_1_0().translate("wdl", allow_empty_container=True)

