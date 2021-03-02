from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Taipale2Meme_V0_1_0 = CommandToolBuilder(tool="taipale2meme", base_command=["taipale2meme"], inputs=[ToolInput(tag="in_postfix", input_type=String(optional=True), prefix="-postfix", doc=InputDocumentation(doc="text to append to motif names.")), ToolInput(tag="in_strands", input_type=Int(optional=True), prefix="-strands", doc=InputDocumentation(doc="|2            print '+ -' or '+' on the MEME strand line;\ndefault: 2 (prints '+ -')")), ToolInput(tag="in_bg", input_type=File(optional=True), prefix="-bg", doc=InputDocumentation(doc="file with background frequencies of letters;\ndefault: uniform")), ToolInput(tag="in_pseudo", input_type=Int(optional=True), prefix="-pseudo", doc=InputDocumentation(doc="add <A> times background frequency to\neach count when computing letter frequencies\ndefault: 0")), ToolInput(tag="in_log_odds", input_type=Boolean(optional=True), prefix="-logodds", doc=InputDocumentation(doc="print log-odds matrix as well as frequency matrix;\ndefault: frequency matrix only")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="-url", doc=InputDocumentation(doc="website for the motif if it doesn't have one\nalready; The motif name is substituted for\nMOTIF_NAME; default: use existing url"))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taipale2Meme_V0_1_0().translate("wdl")

