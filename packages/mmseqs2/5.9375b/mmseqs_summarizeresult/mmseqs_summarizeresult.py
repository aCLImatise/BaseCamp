from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Summarizeresult_V0_1_0 = CommandToolBuilder(tool="mmseqs_summarizeresult", base_command=["mmseqs", "summarizeresult"], inputs=[ToolInput(tag="in_false_add_convert", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="false           add backtrace string (convert to alignments with mmseqs convertalis utility)")), ToolInput(tag="in_list_matches_evalue", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="0.001           list matches below this E-value [0.0, inf]")), ToolInput(tag="in_list_matches_fraction", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)")), ToolInput(tag="in_overlap", input_type=Boolean(optional=True), prefix="--overlap", doc=InputDocumentation(doc="0.000           maximum overlap")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Summarizeresult_V0_1_0().translate("wdl", allow_empty_container=True)

