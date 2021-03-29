from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Directory

Nf_Core_Sync_V0_1_0 = CommandToolBuilder(tool="nf_core_sync", base_command=["nf-core", "sync"], inputs=[ToolInput(tag="in_from_branch", input_type=String(optional=True), prefix="--from-branch", doc=InputDocumentation(doc="The git branch to use to fetch workflow vars.")), ToolInput(tag="in_pull_request", input_type=Boolean(optional=True), prefix="--pull-request", doc=InputDocumentation(doc="Make a GitHub pull-request with the changes.")), ToolInput(tag="in_repository", input_type=String(optional=True), prefix="--repository", doc=InputDocumentation(doc="GitHub PR: target repository.")), ToolInput(tag="in_username", input_type=String(optional=True), prefix="--username", doc=InputDocumentation(doc="GitHub PR: auth username.")), ToolInput(tag="in_pipeline_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Sync_V0_1_0().translate("wdl")

