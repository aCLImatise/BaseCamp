from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Toolshed_Repositories_Create_Repository_V0_1_0 = CommandToolBuilder(tool="parsec_toolshed_repositories_create_repository", base_command=["parsec", "toolshed_repositories", "create_repository"], inputs=[ToolInput(tag="in_description", input_type=String(optional=True), prefix="--description", doc=InputDocumentation(doc="Optional description of the repository")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="type of the repository. One of 'unrestricted',\n'repository_suite_definition', or\n'tool_dependency_definition'  [default:\nunrestricted]")), ToolInput(tag="in_remote_repository_url", input_type=String(optional=True), prefix="--remote_repository_url", doc=InputDocumentation(doc="Remote URL (e.g. GitHub/Bitbucket repository)")), ToolInput(tag="in_homepage_url", input_type=String(optional=True), prefix="--homepage_url", doc=InputDocumentation(doc="Upstream's homepage for the project")), ToolInput(tag="in_category_ids", input_type=String(optional=True), prefix="--category_ids", doc=InputDocumentation(doc="List of encoded category IDs")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_synopsis", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Toolshed_Repositories_Create_Repository_V0_1_0().translate("wdl")

