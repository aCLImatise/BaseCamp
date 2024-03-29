from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Mmseqs_Extractalignedregion_V0_1_0 = CommandToolBuilder(tool="mmseqs_extractalignedregion", base_command=["mmseqs", "extractalignedregion"], inputs=[ToolInput(tag="in_extract_mode", input_type=Int(optional=True), prefix="--extract-mode", doc=InputDocumentation(doc="Extract from 1: Query, 2: Target [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_db_load_mode", input_type=Int(optional=True), prefix="--db-load-mode", doc=InputDocumentation(doc="Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Extractalignedregion_V0_1_0().translate("wdl")

