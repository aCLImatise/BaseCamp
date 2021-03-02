from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Axt_To_Maf_Py_V0_1_0 = CommandToolBuilder(tool="axt_to_maf.py", base_command=["axt_to_maf.py"], inputs=[ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc=": prevents stats report"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Axt_To_Maf_Py_V0_1_0().translate("wdl", allow_empty_container=True)

