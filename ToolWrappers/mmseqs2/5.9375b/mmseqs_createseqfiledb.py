from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Createseqfiledb_V0_1_0 = CommandToolBuilder(tool="mmseqs_createseqfiledb", base_command=["mmseqs", "createseqfiledb"], inputs=[ToolInput(tag="in_min_sequences", input_type=Boolean(optional=True), prefix="--min-sequences", doc=InputDocumentation(doc="1               minimum number of sequences a cluster may contain")), ToolInput(tag="in_max_sequences", input_type=Boolean(optional=True), prefix="--max-sequences", doc=InputDocumentation(doc="2147483647      maximum number of sequences a cluster may contain")), ToolInput(tag="in_hh_format", input_type=Boolean(optional=True), prefix="--hh-format", doc=InputDocumentation(doc="false           format entries to use with hhsuite (for singleton clusters)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Createseqfiledb_V0_1_0().translate("wdl", allow_empty_container=True)

