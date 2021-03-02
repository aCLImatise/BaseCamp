from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Lca_V0_1_0 = CommandToolBuilder(tool="mmseqs_lca", base_command=["mmseqs", "lca"], inputs=[ToolInput(tag="in_lca_ranks", input_type=Boolean(optional=True), prefix="--lca-ranks", doc=InputDocumentation(doc="Ranks to return in LCA computation")), ToolInput(tag="in_blacklist", input_type=Boolean(optional=True), prefix="--blacklist", doc=InputDocumentation(doc="12908,28384     Comma separted list of ignored taxa in LCA computation")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Lca_V0_1_0().translate("wdl", allow_empty_container=True)

