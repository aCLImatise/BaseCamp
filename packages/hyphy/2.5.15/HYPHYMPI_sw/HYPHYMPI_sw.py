from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hyphympi_Sw_V0_1_0 = CommandToolBuilder(tool="HYPHYMPI_sw", base_command=["HYPHYMPI", "sw"], inputs=[ToolInput(tag="in_else", input_type=String(), position=0, doc=InputDocumentation(doc="fprintf(stdout, 'Finshed Segment ', Format(segmentStart,0,0), ' - ', Format(segmentEnd,0,0), '\n');"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hyphympi_Sw_V0_1_0().translate("wdl", allow_empty_container=True)

