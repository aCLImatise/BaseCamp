from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Directory

Nf_Core_Sync_V0_1_0 = CommandToolBuilder(tool="nf_core_sync", base_command=["nf-core", "sync"], inputs=[ToolInput(tag="in_make_template_branch", input_type=Boolean(optional=True), prefix="--make-template-branch", doc=InputDocumentation(doc="Create a TEMPLATE branch if none is found.")), ToolInput(tag="in_from_branch", input_type=String(optional=True), prefix="--from-branch", doc=InputDocumentation(doc="The git branch to use to fetch workflow vars.")), ToolInput(tag="in_pull_request", input_type=Boolean(optional=True), prefix="--pull-request", doc=InputDocumentation(doc="Make a GitHub pull-request with the changes.")), ToolInput(tag="in_username", input_type=String(optional=True), prefix="--username", doc=InputDocumentation(doc="GitHub username for the PR.")), ToolInput(tag="in_repository", input_type=String(optional=True), prefix="--repository", doc=InputDocumentation(doc="GitHub repository name for the PR.")), ToolInput(tag="in_auth_token", input_type=String(optional=True), prefix="--auth-token", doc=InputDocumentation(doc="GitHub API personal access token.")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="Sync template for all nf-core pipelines.")), ToolInput(tag="in_pipeline_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Sync_V0_1_0().translate("wdl", allow_empty_container=True)

