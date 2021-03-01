from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nextflow_Drop_V0_1_0 = CommandToolBuilder(tool="nextflow_drop", base_command=["nextflow", "drop"], inputs=[ToolInput(tag="in_delete_repository_false", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Delete the repository without taking care of local changes\nDefault: false")), ToolInput(tag="in_drop", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_project", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nextflow:20.10.0--hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextflow_Drop_V0_1_0().translate("wdl")

