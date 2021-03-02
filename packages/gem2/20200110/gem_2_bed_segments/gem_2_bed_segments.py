from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Gem_2_Bed_Segments_V0_1_0 = CommandToolBuilder(tool="gem_2_bed_segments", base_command=["gem-2-bed", "segments"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="(default=stdin)")), ToolInput(tag="in_strata_after_best", input_type=Int(optional=True), prefix="--strata-after-best", doc=InputDocumentation(doc="(default=0)")), ToolInput(tag="in_errors_after_best", input_type=Int(optional=True), prefix="--errors-after-best", doc=InputDocumentation(doc="(default=0)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="(default=stdout)")), ToolInput(tag="in_orientation_from_splices", input_type=Boolean(optional=True), prefix="--orientation-from-splices", doc=InputDocumentation(doc="(default: disabled)")), ToolInput(tag="in_compact", input_type=Boolean(optional=True), prefix="--compact", doc=InputDocumentation(doc="(emit only the first six BED fields,\ndefault=false)")), ToolInput(tag="in_rgb_forward_scheme", input_type=Int(optional=True), prefix="--rgb-forward-scheme", doc=InputDocumentation(doc=",<8-bit_int>,<8-bit_int>\n(RGB scheme for forward blocks,\ndefault=0,0,255)")), ToolInput(tag="in_rgb_reverse_scheme", input_type=Int(optional=True), prefix="--rgb-reverse-scheme", doc=InputDocumentation(doc=",<8-bit_int>,<8-bit_int>\n(RGB scheme for reverse blocks,\ndefault=255,0,0)")), ToolInput(tag="in_rgb_unknown_scheme", input_type=Int(optional=True), prefix="--rgb-unknown-scheme", doc=InputDocumentation(doc=",<8-bit_int>,<8-bit_int>\n(RGB scheme for unknown blocks,\ndefault=64,64,64)")), ToolInput(tag="in_max_buffer_size", input_type=Int(optional=True), prefix="--max-buffer-size", doc=InputDocumentation(doc="(default=1000000000)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="(default=1)")), ToolInput(tag="in_show_license", input_type=Boolean(optional=True), prefix="--show-license", doc=InputDocumentation(doc="(show license and exit)"))], outputs=[], container="quay.io/biocontainers/gem2:20200110--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gem_2_Bed_Segments_V0_1_0().translate("wdl")

