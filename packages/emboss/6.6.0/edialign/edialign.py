from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Edialign_V0_1_0 = CommandToolBuilder(tool="edialign", base_command=["edialign"], inputs=[ToolInput(tag="in_overlap_w", input_type=Boolean(optional=True), prefix="-overlapw", doc=InputDocumentation(doc="selection  [default (when Nseq =< 35)] By default\noverlap weights are used when Nseq =<35 but\nyou can set this to 'yes' or 'no'")), ToolInput(tag="in_linkage", input_type=Boolean(optional=True), prefix="-linkage", doc=InputDocumentation(doc="menu       [UPGMA] Clustering method to construct\nsequence tree (UPGMA, minimum linkage or\nmaximum linkage) (Values: UPGMA (UPGMA); max\n(maximum linkage); min (minimum linkage))")), ToolInput(tag="in_max_frag_l", input_type=Boolean(optional=True), prefix="-maxfragl", doc=InputDocumentation(doc="integer    [40] Maximum fragment length (Integer 0 or\nmore)")), ToolInput(tag="in_its_core", input_type=Boolean(optional=True), prefix="-itscore", doc=InputDocumentation(doc="boolean    [N] Use iterative score")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="-threshold", doc=InputDocumentation(doc="float      [0.0] Threshold for considering diagonal for\nalignment (Number 0.000 or more)")), ToolInput(tag="in_mask", input_type=Boolean(optional=True), prefix="-mask", doc=InputDocumentation(doc="boolean    [N] Replace unaligned characters by stars\n'*' rather then putting them in lowercase")), ToolInput(tag="in_do_stars", input_type=Boolean(optional=True), prefix="-dostars", doc=InputDocumentation(doc="boolean    [N] Activate writing of stars instead of")), ToolInput(tag="in_numbers", input_type=String(), position=0, doc=InputDocumentation(doc="-starnum            integer    [4] Put up to n stars '*' instead of digits"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edialign_V0_1_0().translate("wdl", allow_empty_container=True)

