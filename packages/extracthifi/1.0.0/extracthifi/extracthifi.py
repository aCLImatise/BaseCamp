from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Extracthifi_V0_1_0 = CommandToolBuilder(tool="extracthifi", base_command=["extracthifi"], inputs=[ToolInput(tag="in_input_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="STR  Input CCS BAM.")), ToolInput(tag="in_output_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc="STR  Ouput HiFi BAM."))], outputs=[], container="quay.io/biocontainers/extracthifi:1.0.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extracthifi_V0_1_0().translate("wdl")

