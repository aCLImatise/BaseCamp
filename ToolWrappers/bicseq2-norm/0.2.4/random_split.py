from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Random_Split_V0_1_0 = CommandToolBuilder(tool="random_split", base_command=["random_split"], inputs=[ToolInput(tag="in_probability_that_line_goes_to_output_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_probability_that_line_goes_to_output_file", output_type=File(), selector=InputSelector(input_to_select="in_probability_that_line_goes_to_output_file", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Random_Split_V0_1_0().translate("wdl", allow_empty_container=True)

