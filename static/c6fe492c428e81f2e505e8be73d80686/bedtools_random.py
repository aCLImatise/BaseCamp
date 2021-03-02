from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bedtools_Random_V0_1_0 = CommandToolBuilder(tool="bedtools_random", base_command=["bedtools", "random"], inputs=[ToolInput(tag="in_length_intervals_generate", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="The length of the intervals to generate.\n- Default = 100.\n- (INTEGER)")), ToolInput(tag="in_number_intervals_generate", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="The number of intervals to generate.\n- Default = 1,000,000.\n- (INTEGER)")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="-seed", doc=InputDocumentation(doc="Supply an integer seed for the shuffling.\n- By default, the seed is chosen automatically.\n- (INTEGER)")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Random_V0_1_0().translate("wdl")

