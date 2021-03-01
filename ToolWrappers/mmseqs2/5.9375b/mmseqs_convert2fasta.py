from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Convert2Fasta_V0_1_0 = CommandToolBuilder(tool="mmseqs_convert2fasta", base_command=["mmseqs", "convert2fasta"], inputs=[ToolInput(tag="in_use_header_file", input_type=Boolean(optional=True), prefix="--use-header-file", doc=InputDocumentation(doc="false           use the ffindex header file instead of the body to map the entry keys")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Convert2Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

