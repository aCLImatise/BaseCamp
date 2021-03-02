from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nextflow_Bak_Clone_V0_1_0 = CommandToolBuilder(tool="nextflow.bak_clone", base_command=["nextflow.bak", "clone"], inputs=[ToolInput(tag="in_hub", input_type=Boolean(optional=True), prefix="-hub", doc=InputDocumentation(doc="Service hub where the project is hosted")), ToolInput(tag="in_revision_clone_it", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Revision to clone - It can be a git branch, tag or revision number")), ToolInput(tag="in_user", input_type=Boolean(optional=True), prefix="-user", doc=InputDocumentation(doc="Private repository user name\n")), ToolInput(tag="in_clone", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_project", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nextflow:20.10.0--hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextflow_Bak_Clone_V0_1_0().translate("wdl")

