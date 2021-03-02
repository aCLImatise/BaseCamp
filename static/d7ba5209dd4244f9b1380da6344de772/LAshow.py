from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Lashow_V0_1_0 = CommandToolBuilder(tool="LAshow", base_command=["LAshow"], inputs=[ToolInput(tag="in_show_cartoon_reads", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": Show a cartoon of the LA between reads.")), ToolInput(tag="in_show_alignment_la", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": Show the alignment of each LA.")), ToolInput(tag="in_show_with_bps", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": Show the alignment of each LA with -w bp's of A in each row.")), ToolInput(tag="in_show_proper_overlaps", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=": Show only proper overlaps.")), ToolInput(tag="in_switch_roles_", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc=": Switch the roles of A- and B-reads.")), ToolInput(tag="in_show_alignments_upper", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc=": Show alignments in upper case.")), ToolInput(tag="in_indent_alignments_cartoons", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": Indent alignments and cartoons by -i.")), ToolInput(tag="in_width_row_r", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc=": Width of each row of alignment in symbols (-a) or bps (-r).")), ToolInput(tag="in_border_bps_show", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=": # of border bp.s to show on each side of LA.")), ToolInput(tag="in_car_ouf", input_type=Boolean(optional=True), prefix="-caroUF", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lashow_V0_1_0().translate("wdl", allow_empty_container=True)

