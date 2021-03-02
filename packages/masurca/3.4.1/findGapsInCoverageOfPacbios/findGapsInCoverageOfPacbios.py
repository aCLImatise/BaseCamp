from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Findgapsincoverageofpacbios_V0_1_0 = CommandToolBuilder(tool="findGapsInCoverageOfPacbios", base_command=["findGapsInCoverageOfPacbios"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="*Pacbio read-super-read match file")), ToolInput(tag="in_max_gap_overlap", input_type=Int(optional=True), prefix="--max-gap-overlap", doc=InputDocumentation(doc="Shorter matches between good-overlap regions are considered a gap (70)")), ToolInput(tag="in_min_ovl_implied_vs_gap_end", input_type=Int(optional=True), prefix="--min-ovl-implied-vs-gap-end", doc=InputDocumentation(doc="Implied overlaps which overlap good match regions by less than this are not processed (100)")), ToolInput(tag="in_min_match_len_for_implied_match", input_type=Int(optional=True), prefix="--min-match-len-for-implied-match", doc=InputDocumentation(doc="Will not use implied matches of matches whose actual match is shorter than this (30)")), ToolInput(tag="in_cmdline_parse", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findgapsincoverageofpacbios_V0_1_0().translate("wdl", allow_empty_container=True)

