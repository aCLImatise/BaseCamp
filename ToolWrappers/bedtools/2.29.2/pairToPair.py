from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pairtopair_V0_1_0 = CommandToolBuilder(tool="pairToPair", base_command=["pairToPair"], inputs=[ToolInput(tag="in_minimum_overlap_required", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Minimum overlap required as fraction of A (e.g. 0.05).\nDefault is 1E-9 (effectively 1bp).")), ToolInput(tag="in_type", input_type=Boolean(optional=True), prefix="-type", doc=InputDocumentation(doc="Approach to reporting overlaps between A and B.\nneither Report overlaps if neither end of A overlaps B.\neither  Report overlaps if either ends of A overlap B.\nboth    Report overlaps if both ends of A overlap B.\nnotboth Report overlaps if one or neither of A's overlap B.\n- Default = both.")), ToolInput(tag="in_slop", input_type=Boolean(optional=True), prefix="-slop", doc=InputDocumentation(doc="The amount of slop (in b.p.). to be added to each footprint of A.\n*Note*: Slop is subtracted from start1 and start2\nand added to end1 and end2.\n- Default = 0.")), ToolInput(tag="in_ss", input_type=Boolean(optional=True), prefix="-ss", doc=InputDocumentation(doc="Add slop based to each BEDPE footprint based on strand.\n- If strand is '+', slop is only added to the end coordinates.\n- If strand is '-', slop is only added to the start coordinates.\n- By default, slop is added in both directions.")), ToolInput(tag="in_is", input_type=Boolean(optional=True), prefix="-is", doc=InputDocumentation(doc="Ignore strands when searching for overlaps.\n- By default, strands are enforced.")), ToolInput(tag="in_rdn", input_type=Boolean(optional=True), prefix="-rdn", doc=InputDocumentation(doc="Require the hits to have different names (i.e. avoid self-hits).\n- By default, same names are allowed.")), ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pairtopair_V0_1_0().translate("wdl", allow_empty_container=True)

