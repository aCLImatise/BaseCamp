from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Gcloud_Topic_Arg_Files_V0_1_0 = CommandToolBuilder(tool="gcloud_topic_arg_files", base_command=["gcloud", "topic", "arg-files"], inputs=[ToolInput(tag="in_device_ids", input_type=Int(optional=True), prefix="--device-ids", doc=InputDocumentation(doc=",htc_m8,g3")), ToolInput(tag="in_composition", input_type=String(), position=0, doc=InputDocumentation(doc="A special include: [ARG_GROUP1, ...] syntax allows merging or composition")), ToolInput(tag="in_nesting_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Precedence")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="Any argument defined directly within a group will have higher precedence"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Topic_Arg_Files_V0_1_0().translate("wdl", allow_empty_container=True)

