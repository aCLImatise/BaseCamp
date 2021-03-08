from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Mmseqs_Createseqfiledb_V0_1_0 = CommandToolBuilder(tool="mmseqs_createseqfiledb", base_command=["mmseqs", "createseqfiledb"], inputs=[ToolInput(tag="in_min_sequences", input_type=Int(optional=True), prefix="--min-sequences", doc=InputDocumentation(doc="Minimum number of sequences a cluster may contain [1]")), ToolInput(tag="in_max_sequences", input_type=Int(optional=True), prefix="--max-sequences", doc=InputDocumentation(doc="Maximum number of sequences a cluster may contain [2147483647]")), ToolInput(tag="in_hh_format", input_type=Boolean(optional=True), prefix="--hh-format", doc=InputDocumentation(doc="Format entries to use with hhsuite (for singleton clusters) [0]")), ToolInput(tag="in_db_load_mode", input_type=Int(optional=True), prefix="--db-load-mode", doc=InputDocumentation(doc="Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Createseqfiledb_V0_1_0().translate("wdl")

