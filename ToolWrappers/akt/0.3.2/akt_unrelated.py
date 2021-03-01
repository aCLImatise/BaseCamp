from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Akt_Unrelated_V0_1_0 = CommandToolBuilder(tool="akt_unrelated", base_command=["akt", "unrelated"], inputs=[ToolInput(tag="in_km_in", input_type=Boolean(optional=True), prefix="--kmin", doc=InputDocumentation(doc=":                     threshold for relatedness (0.025)")), ToolInput(tag="in_its", input_type=Boolean(optional=True), prefix="--its", doc=InputDocumentation(doc=":                      number of iterations to find unrelated (10)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Akt_Unrelated_V0_1_0().translate("wdl", allow_empty_container=True)

