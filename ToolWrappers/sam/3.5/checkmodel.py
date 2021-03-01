from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Checkmodel_V0_1_0 = CommandToolBuilder(tool="checkmodel", base_command=["checkmodel"], inputs=[ToolInput(tag="in_file_contains_model", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=", while file contains a MODEL, or")), ToolInput(tag="in_model_file", input_type=File(optional=True), prefix="-model_file", doc=InputDocumentation(doc=", where file contains any model structure, or"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkmodel_V0_1_0().translate("wdl", allow_empty_container=True)

