from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Priority2Meme_V0_1_0 = CommandToolBuilder(tool="priority2meme", base_command=["priority2meme"], inputs=[ToolInput(tag="in_numbers", input_type=Boolean(optional=True), prefix="-numbers", doc=InputDocumentation(doc="use numbers instead of strings as motif names;")), ToolInput(tag="in_bg", input_type=File(optional=True), prefix="-bg", doc=InputDocumentation(doc="file with background frequencies of letters;\ndefault: uniform background")), ToolInput(tag="in_pseudo", input_type=Int(optional=True), prefix="-pseudo", doc=InputDocumentation(doc="add <total pseudocounts> times letter\nbackground to each frequency; default: 0")), ToolInput(tag="in_log_odds", input_type=Boolean(optional=True), prefix="-logodds", doc=InputDocumentation(doc="print log-odds matrix, too;\ndefault: print frequency matrix only")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="-url", doc=InputDocumentation(doc="website for the motif; default: no url")), ToolInput(tag="in_matrix_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Priority2Meme_V0_1_0().translate("wdl")

