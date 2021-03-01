from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Add_Track_Json_Pl_V0_1_0 = CommandToolBuilder(tool="add_track_json.pl", base_command=["add-track-json.pl"], inputs=[ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="For example, if you wanted to add a sequence track to")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="none yet"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Track_Json_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

