from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Chimche_V0_1_0 = CommandToolBuilder(tool="chimChe", base_command=["chimChe"], inputs=[ToolInput(tag="in_multifasta_sequences_analyzed", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="multi-fasta sequences to be analyzed")), ToolInput(tag="in_multifasta_sequences_indexed", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="multi-fasta sequences to be indexed (if missing, -q file used)")), ToolInput(tag="in_size_substrings_default", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="the size of the substrings; <= 14, default 10")), ToolInput(tag="in_gives_number_skip", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="gives the number of bp to skip between segmentation tests")), ToolInput(tag="in_specifies_smallest_overlap", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="specifies smallest overlap to be used")), ToolInput(tag="in_full_deflines_printed", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="full deflines to be printed")), ToolInput(tag="in_best_simple_best", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="best simple, best left and best right to be trimmed to the same window, to reduce partial-sequence artifacts"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chimche_V0_1_0().translate("wdl", allow_empty_container=True)

