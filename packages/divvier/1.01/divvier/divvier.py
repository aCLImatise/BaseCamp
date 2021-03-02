from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, Int

Divvier_V0_1_0 = CommandToolBuilder(tool="divvier", base_command=["divvier"], inputs=[ToolInput(tag="in_divvy", input_type=Boolean(optional=True), prefix="-divvy", doc=InputDocumentation(doc=": do standard divvying (DEFAULT)")), ToolInput(tag="in_partial", input_type=Boolean(optional=True), prefix="-partial", doc=InputDocumentation(doc=": do partial filtering by testing removal of individual characters")), ToolInput(tag="in_thresh", input_type=Float(optional=True), prefix="-thresh", doc=InputDocumentation(doc=": set the threshold for divvying to X (DEFAULT divvying = 0.801; partial = 0.774)")), ToolInput(tag="in_approx", input_type=Int(optional=True), prefix="-approx", doc=InputDocumentation(doc=": minimum number of characters tested in a split during divvying (DEFAULT X = 10)")), ToolInput(tag="in_check_splits", input_type=Boolean(optional=True), prefix="-checksplits", doc=InputDocumentation(doc=": go through sequence and ensure there's a pair for every split. Can be slow")), ToolInput(tag="in_hmm_approx", input_type=Boolean(optional=True), prefix="-HMMapprox", doc=InputDocumentation(doc=": Do the pairHMM bounding approximation (DEFAULT)")), ToolInput(tag="in_hmm_exact", input_type=Boolean(optional=True), prefix="-HMMexact", doc=InputDocumentation(doc=": Do the full pairHMM and ignore bounding")), ToolInput(tag="in_min_col", input_type=Int(optional=True), prefix="-mincol", doc=InputDocumentation(doc=": Minimum number of characters in a column to output when divvying/filtering (DEFAULT X = 2)")), ToolInput(tag="in_divvy_gap", input_type=Boolean(optional=True), prefix="-divvygap", doc=InputDocumentation(doc=": Output a gap instead of the static * character so divvied MSAs can be used in phylogeny program"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Divvier_V0_1_0().translate("wdl", allow_empty_container=True)

