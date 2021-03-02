from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Drive_Edit_Desc_V0_1_0 = CommandToolBuilder(tool="drive_edit_desc", base_command=["drive", "edit-desc"], inputs=[ToolInput(tag="in_description", input_type=String(optional=True), prefix="-description", doc=InputDocumentation(doc="set the description")), ToolInput(tag="in_piped", input_type=Boolean(optional=True), prefix="-piped", doc=InputDocumentation(doc="get content in from standard input (stdin)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Edit_Desc_V0_1_0().translate("wdl", allow_empty_container=True)

