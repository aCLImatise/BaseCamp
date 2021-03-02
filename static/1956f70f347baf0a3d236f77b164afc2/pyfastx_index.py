from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pyfastx_Index_V0_1_0 = CommandToolBuilder(tool="pyfastx_index", base_command=["pyfastx", "index"], inputs=[ToolInput(tag="in_full", input_type=Boolean(optional=True), prefix="--full", doc=InputDocumentation(doc="build full index, base composition will be calculated")), ToolInput(tag="in_fast_x", input_type=String(), position=0, doc=InputDocumentation(doc="fasta or fastq file, gzip support"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyfastx_Index_V0_1_0().translate("wdl", allow_empty_container=True)

