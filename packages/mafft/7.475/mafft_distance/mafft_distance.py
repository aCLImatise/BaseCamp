from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Mafft_Distance_V0_1_0 = CommandToolBuilder(tool="mafft_distance", base_command=["mafft-distance"], inputs=[ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_pd", input_type=Boolean(optional=True), prefix="-PD", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mafft:7.475--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafft_Distance_V0_1_0().translate("wdl")

