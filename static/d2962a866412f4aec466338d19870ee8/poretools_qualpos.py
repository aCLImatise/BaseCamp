from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Poretools_Qualpos_V0_1_0 = CommandToolBuilder(tool="poretools_qualpos", base_command=["poretools", "qualpos"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not output warnings to stderr")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Minimum read length to be included in analysis.")), ToolInput(tag="in_max_length", input_type=Int(optional=True), prefix="--max-length", doc=InputDocumentation(doc="Maximum read length to be included in analysis.")), ToolInput(tag="in_bin_width", input_type=Int(optional=True), prefix="--bin-width", doc=InputDocumentation(doc="The width of bins (default: 1000 bp).")), ToolInput(tag="in_type", input_type=Int(optional=True), prefix="--type", doc=InputDocumentation(doc="Which type of reads should be analyzed? Def.=all,\nchoices=[all, fwd, rev, 2D, fwd,rev, best]")), ToolInput(tag="in_start", input_type=String(optional=True), prefix="--start", doc=InputDocumentation(doc="Only analyze reads from after start timestamp")), ToolInput(tag="in_end", input_type=String(optional=True), prefix="--end", doc=InputDocumentation(doc="Only analyze reads from before end timestamp")), ToolInput(tag="in_high_quality", input_type=Boolean(optional=True), prefix="--high-quality", doc=InputDocumentation(doc="Only analyze reads with more complement events than")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="The input FAST5 files.")), ToolInput(tag="in_template_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--saveas STRING       Save the plot to a file named filename.extension (e.g."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poretools_Qualpos_V0_1_0().translate("wdl", allow_empty_container=True)

