from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Ccat_V0_1_0 = CommandToolBuilder(tool="CCAT", base_command=["CCAT"], inputs=[ToolInput(tag="in_library_one_tag_file_name", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_library_two_tag_file_name", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_chromosome_length_file_name", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_config_file_name", input_type=File(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_project_name", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ccat_V0_1_0().translate("wdl", allow_empty_container=True)

