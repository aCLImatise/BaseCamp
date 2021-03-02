from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Crux_Spectral_Counts_0_01__V0_1_0 = CommandToolBuilder(tool="crux_spectral_counts_0.01.", base_command=["crux", "spectral-counts", "0.01."], inputs=[ToolInput(tag="in_crux", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_spectral_counts", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crux_Spectral_Counts_0_01__V0_1_0().translate("wdl", allow_empty_container=True)

