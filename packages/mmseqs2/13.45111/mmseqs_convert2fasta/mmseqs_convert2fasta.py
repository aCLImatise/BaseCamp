from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Mmseqs_Convert2Fasta_V0_1_0 = CommandToolBuilder(tool="mmseqs_convert2fasta", base_command=["mmseqs", "convert2fasta"], inputs=[ToolInput(tag="in_use_header_file", input_type=Boolean(optional=True), prefix="--use-header-file", doc=InputDocumentation(doc="use the sequence header DB instead of the body to map the entry keys [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Convert2Fasta_V0_1_0().translate("wdl")

