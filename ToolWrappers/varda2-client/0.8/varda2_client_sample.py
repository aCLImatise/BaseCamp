from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Varda2_Client_Sample_V0_1_0 = CommandToolBuilder(tool="varda2_client_sample", base_command=["varda2-client", "sample"], inputs=[ToolInput(tag="in_uuid", input_type=String(optional=True), prefix="--uuid", doc=InputDocumentation(doc="Sample UUID")), ToolInput(tag="in_disease_code", input_type=String(optional=True), prefix="--disease-code", doc=InputDocumentation(doc="Disease indication code")), ToolInput(tag="in_lab_sample_id", input_type=String(optional=True), prefix="--lab-sample-id", doc=InputDocumentation(doc="Local sample id\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varda2_Client_Sample_V0_1_0().translate("wdl", allow_empty_container=True)

