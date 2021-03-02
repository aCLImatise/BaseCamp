from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vcf2Db_Py_V0_1_0 = CommandToolBuilder(tool="vcf2db.py", base_command=["vcf2db.py"], inputs=[ToolInput(tag="in_take", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_and", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_create", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_gemini", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_compatible", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_database", input_type=String(), position=8, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Db_Py_V0_1_0().translate("wdl", allow_empty_container=True)

