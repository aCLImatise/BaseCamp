from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Module_Enrichment_Py_Perms_V0_1_0 = CommandToolBuilder(tool="module_enrichment.py_perms", base_command=["module_enrichment.py", "perms"], inputs=[ToolInput(tag="in_perms", input_type=String(optional=True), prefix="--perms", doc=InputDocumentation(doc="")), ToolInput(tag="in_correl_s", input_type=String(optional=True), prefix="--correls", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Module_Enrichment_Py_Perms_V0_1_0().translate("wdl", allow_empty_container=True)

