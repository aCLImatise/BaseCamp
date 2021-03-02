from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cfm_Train_V0_1_0 = CommandToolBuilder(tool="cfm_train", base_command=["cfm-train"], inputs=[ToolInput(tag="in_input_filename", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_feature_filename", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_config_filename", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_peak_file_dir", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_group", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_status_filename", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_no_train", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_start_energy", input_type=String(), position=7, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cfm_Train_V0_1_0().translate("wdl", allow_empty_container=True)

