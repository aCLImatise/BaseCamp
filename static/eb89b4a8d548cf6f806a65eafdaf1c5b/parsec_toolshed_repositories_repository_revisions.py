from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Parsec_Toolshed_Repositories_Repository_Revisions_V0_1_0 = CommandToolBuilder(tool="parsec_toolshed_repositories_repository_revisions", base_command=["parsec", "toolshed_repositories", "repository_revisions"], inputs=[ToolInput(tag="in_downloadable", input_type=Boolean(optional=True), prefix="--downloadable", doc=InputDocumentation(doc="Can the tool be downloaded"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Toolshed_Repositories_Repository_Revisions_V0_1_0().translate("wdl")

