from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bioconda_Utils_Bot_V0_1_0 = CommandToolBuilder(tool="bioconda_utils_bot", base_command=["bioconda-utils", "bot"], inputs=[ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Log level (default: 'info')"))], outputs=[], container="quay.io/biocontainers/bioconda-utils:0.17.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioconda_Utils_Bot_V0_1_0().translate("wdl")

