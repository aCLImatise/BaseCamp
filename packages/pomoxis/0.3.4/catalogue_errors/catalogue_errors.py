from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, String

Catalogue_Errors_V0_1_0 = CommandToolBuilder(tool="catalogue_errors", base_command=["catalogue_errors"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc=".bed file of reference regions to include. (default:\nNone)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads for parallel execution. (default: 1)")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory. (default: error_catalogue)\n")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input alignments (aligned to ref)."))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory. (default: error_catalogue)\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Catalogue_Errors_V0_1_0().translate("wdl", allow_empty_container=True)

