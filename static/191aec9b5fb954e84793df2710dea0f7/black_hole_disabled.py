from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Black_Hole_Disabled_V0_1_0 = CommandToolBuilder(tool="black_hole_disabled", base_command=["black-hole", "disabled"], inputs=[ToolInput(tag="in_five_h", input_type=Int(), position=0, doc=InputDocumentation(doc="4H  8S      6D 11D  6C     11H 12S  8D ")), ToolInput(tag="in_three_h", input_type=Int(), position=0, doc=InputDocumentation(doc="2S  9H      4S  6H  4C      2C 13S  5S ")), ToolInput(tag="in_five_d", input_type=Int(), position=0, doc=InputDocumentation(doc="2D 13C     12C  4D  7S     ")), ToolInput(tag="in_ones", input_type=Int(), position=0, doc=InputDocumentation(doc="2C  3S  4S  3H  2S  1H 13H 12C 11S 10C  9C  8H ")), ToolInput(tag="in_seven_h", input_type=Int(), position=1, doc=InputDocumentation(doc="6D  5H  4H  5D  4D  3C  2D  1D 13C 12D 11H 12S "))], outputs=[], container="quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Black_Hole_Disabled_V0_1_0().translate("wdl")

