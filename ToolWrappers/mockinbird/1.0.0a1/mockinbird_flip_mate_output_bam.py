from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mockinbird_Flip_Mate_Output_Bam_V0_1_0 = CommandToolBuilder(tool="mockinbird_flip_mate_output_bam", base_command=["mockinbird", "flip_mate", "output_bam"], inputs=[ToolInput(tag="in_mock_in_bird", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_flip_mate", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_bam", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_bam", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mockinbird_Flip_Mate_Output_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

