from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Nextstrain_Shell_V0_1_0 = CommandToolBuilder(tool="nextstrain_shell", base_command=["nextstrain", "shell"], inputs=[ToolInput(tag="in_help_all", input_type=Boolean(optional=True), prefix="--help-all", doc=InputDocumentation(doc="Show a full help message of all options and exit")), ToolInput(tag="in_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nextstrain-cli:3.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextstrain_Shell_V0_1_0().translate("wdl")

