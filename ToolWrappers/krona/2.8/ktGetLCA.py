from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ktgetlca_V0_1_0 = CommandToolBuilder(tool="ktGetLCA", base_command=["ktGetLCA"], inputs=[ToolInput(tag="in_streaming_mode_line", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Streaming mode. Each line is expected to be a whitespace-separated list\nof inputs for a single lowest common ancestor computation. Taxonomy will\nbe preloaded, allowing for faster computation after a small upfront time.\n"))], outputs=[], container="quay.io/biocontainers/krona:2.8--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktgetlca_V0_1_0().translate("wdl")

