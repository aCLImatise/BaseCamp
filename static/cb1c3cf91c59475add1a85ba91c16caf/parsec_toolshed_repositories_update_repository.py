from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float

Parsec_Toolshed_Repositories_Update_Repository_V0_1_0 = CommandToolBuilder(tool="parsec_toolshed_repositories_update_repository", base_command=["parsec", "toolshed_repositories", "update_repository"], inputs=[ToolInput(tag="in_commit_message", input_type=String(optional=True), prefix="--commit_message", doc=InputDocumentation(doc="Commit message used for the underlying Mercurial\nrepository backing Tool Shed repository.")), ToolInput(tag="in_tar_ball_path", input_type=String(), position=0, doc=InputDocumentation(doc="Update the contents of a Tool Shed repository with specified tar ball.")), ToolInput(tag="in_zero_dot_five_dot_two", input_type=Float(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Toolshed_Repositories_Update_Repository_V0_1_0().translate("wdl")

