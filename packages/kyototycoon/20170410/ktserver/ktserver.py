from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Ktserver_V0_1_0 = CommandToolBuilder(tool="ktserver", base_command=["ktserver"], inputs=[ToolInput(tag="in_log", input_type=File(optional=True), prefix="-log", doc=InputDocumentation(doc="")), ToolInput(tag="in_th", input_type=Int(optional=True), prefix="-th", doc=InputDocumentation(doc="")), ToolInput(tag="in_tout", input_type=Int(optional=True), prefix="-tout", doc=InputDocumentation(doc="")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="-port", doc=InputDocumentation(doc="")), ToolInput(tag="in_host", input_type=String(optional=True), prefix="-host", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/kyototycoon:20170410--h896b458_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktserver_V0_1_0().translate("wdl")

