from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, String, Boolean

Ncrf_V0_1_0 = CommandToolBuilder(tool="NCRF", base_command=["NCRF"], inputs=[ToolInput(tag="in_min_m_ratio", input_type=Float(optional=True), prefix="--minmratio", doc=InputDocumentation(doc="discard alignments with a low frequency of matches;\nratio can be between 0 and 1 (e.g. '0.85'), or can be\nexpressed as a percentage (e.g. '85%')")), ToolInput(tag="in_max_noise", input_type=Int(optional=True), prefix="--maxnoise", doc=InputDocumentation(doc="(same as --minmratio but with 1-ratio)")), ToolInput(tag="in_minlength", input_type=Int(optional=True), prefix="--minlength", doc=InputDocumentation(doc="discard alignments that don't have long enough repeat\n(default is 500)")), ToolInput(tag="in_min_score", input_type=String(optional=True), prefix="--minscore", doc=InputDocumentation(doc="discard alignments that don't score high enough\n(default is zero)")), ToolInput(tag="in_stats", input_type=String(optional=True), prefix="--stats", doc=InputDocumentation(doc="show match/mismatch/insert/delete counts")), ToolInput(tag="in_positional_events", input_type=Boolean(optional=True), prefix="--positionalevents", doc=InputDocumentation(doc="show match/mismatch/insert/delete counts by motif\nposition (independent of --stats=events); this may be\nuseful for detecting error non-uniformity, to separate\nperfect repeats from imperfect")), ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ncrf_V0_1_0().translate("wdl", allow_empty_container=True)

