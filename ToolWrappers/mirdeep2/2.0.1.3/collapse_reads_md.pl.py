from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Collapse_Reads_Md_Pl_V0_1_0 = CommandToolBuilder(tool="collapse_reads_md.pl", base_command=["collapse_reads_md.pl"], inputs=[ToolInput(tag="in_outputs_progress", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="outputs progress"))], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collapse_Reads_Md_Pl_V0_1_0().translate("wdl")

