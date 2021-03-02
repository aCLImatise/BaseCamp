from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Mgaps_V0_1_0 = CommandToolBuilder(tool="mgaps", base_command=["mgaps"], inputs=[ToolInput(tag="in_check_header_labels", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="Check that fasta header labels alternately have 'Reverse'")), ToolInput(tag="in_fixed_diagonal_difference", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Fixed diagonal difference to join matches")), ToolInput(tag="in_use_extent_start", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Use extent of match (end - start) rather than sum of piece\nlengths to determine length of cluster")), ToolInput(tag="in_fraction_separation_diagonal", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="Fraction of separation for diagonal difference")), ToolInput(tag="in_minimum_length_cluster", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Minimum length of cluster match")), ToolInput(tag="in_maximum_separation_matches", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Maximum separation between matches in cluster"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mgaps_V0_1_0().translate("wdl", allow_empty_container=True)

