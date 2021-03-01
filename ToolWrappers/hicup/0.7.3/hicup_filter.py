from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Hicup_Filter_V0_1_0 = CommandToolBuilder(tool="hicup_filter", base_command=["hicup_filter"], inputs=[ToolInput(tag="in_config", input_type=Boolean(optional=True), prefix="--config", doc=InputDocumentation(doc="Specify the optional configuration file")), ToolInput(tag="in_digest", input_type=Boolean(optional=True), prefix="--digest", doc=InputDocumentation(doc="Specify the genome digest file (created by hicup_digester)")), ToolInput(tag="in_longest", input_type=Boolean(optional=True), prefix="--longest", doc=InputDocumentation(doc="Maximum allowable insert size (bps)")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Directory to write output files")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress all progress reports")), ToolInput(tag="in_shortest", input_type=Boolean(optional=True), prefix="--shortest", doc=InputDocumentation(doc="Minimum allowable insert size (bps)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="Specify the number of threads, allowing simultaneous processing\nof multiple files")), ToolInput(tag="in_zip", input_type=Boolean(optional=True), prefix="--zip", doc=InputDocumentation(doc="Compress final output files using gzip, or if SAMtools is\ninstalled, to BAM format"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Directory to write output files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicup_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

