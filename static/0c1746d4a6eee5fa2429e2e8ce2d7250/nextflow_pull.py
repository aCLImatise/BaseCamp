from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nextflow_Pull_V0_1_0 = CommandToolBuilder(tool="nextflow_pull", base_command=["nextflow", "pull"], inputs=[ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="-all", doc=InputDocumentation(doc="Update all downloaded projects\nDefault: false")), ToolInput(tag="in_hub", input_type=Boolean(optional=True), prefix="-hub", doc=InputDocumentation(doc="Service hub where the project is hosted")), ToolInput(tag="in_revision", input_type=Boolean(optional=True), prefix="-revision", doc=InputDocumentation(doc="Revision of the project to run (either a git branch, tag or commit SHA\nnumber)")), ToolInput(tag="in_user", input_type=Boolean(optional=True), prefix="-user", doc=InputDocumentation(doc="Private repository user name\n")), ToolInput(tag="in_pull", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_project", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_repository", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_url", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nextflow:20.10.0--hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextflow_Pull_V0_1_0().translate("wdl")

