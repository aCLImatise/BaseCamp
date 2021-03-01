from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mockinbird_Preprocess_Output_Dir_V0_1_0 = CommandToolBuilder(tool="mockinbird_preprocess_output_dir", base_command=["mockinbird", "preprocess", "output_dir"], inputs=[ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log_level", doc=InputDocumentation(doc="")), ToolInput(tag="in_mock_in_bird", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_preprocess", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mockinbird_Preprocess_Output_Dir_V0_1_0().translate("wdl", allow_empty_container=True)

