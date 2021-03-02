from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Comb_P_Peaks_V0_1_0 = CommandToolBuilder(tool="comb_p_peaks", base_command=["comb-p", "peaks"], inputs=[ToolInput(tag="in_dist", input_type=Int(optional=True), prefix="--dist", doc=InputDocumentation(doc="Maximum dist to skip before finding a seed/thresh\nvalue. If this number is exceeded, the region is\nended.")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="A value must be at least this large/small in order to\nseed a region.")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="After seeding, a value of at least this number can\nextend a region.")), ToolInput(tag="in_invert", input_type=Boolean(optional=True), prefix="--invert", doc=InputDocumentation(doc="by default, the test is for a value less-than seed or\nthresh--e.g. for p-values. If this flag is specified,\nthe test is for greater-than--e.g. for scores or\n-log10(p-values)")), ToolInput(tag="in_column_number_containing", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="column number containing the value for which to find\npeaks.\n")), ToolInput(tag="in_find", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_peaks", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_troughs", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_sorted", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=7, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Comb_P_Peaks_V0_1_0().translate("wdl", allow_empty_container=True)

