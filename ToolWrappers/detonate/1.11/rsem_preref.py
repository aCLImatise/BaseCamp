from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rsem_Preref_V0_1_0 = CommandToolBuilder(tool="rsem_preref", base_command=["rsem-preref"], inputs=[ToolInput(tag="in_polyalen_specify_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": polyALen: specify the length of polyA tail you want to pad. Default is 100")), ToolInput(tag="in_exceptionf_file_contains", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": exceptionF: file contains a list of exception reference ids. IDs starts from 1. Must set if polyAChoice = 2")), ToolInput(tag="in__quiet", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": quiet"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Preref_V0_1_0().translate("wdl", allow_empty_container=True)

