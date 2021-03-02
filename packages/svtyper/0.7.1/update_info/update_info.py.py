from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Update_Info_Py_V0_1_0 = CommandToolBuilder(tool="update_info.py", base_command=["update_info.py"], inputs=[ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="VCF input (default: stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Update_Info_Py_V0_1_0().translate("wdl", allow_empty_container=True)

