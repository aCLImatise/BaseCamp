from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nextstrain_Remote_Download_V0_1_0 = CommandToolBuilder(tool="nextstrain_remote_download", base_command=["nextstrain", "remote", "download"], inputs=[ToolInput(tag="in_recursively", input_type=Boolean(optional=True), prefix="--recursively", doc=InputDocumentation(doc="Download all files with the given remote path prefix\n(default: False)\n"))], outputs=[], container="quay.io/biocontainers/nextstrain-cli:3.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextstrain_Remote_Download_V0_1_0().translate("wdl")

