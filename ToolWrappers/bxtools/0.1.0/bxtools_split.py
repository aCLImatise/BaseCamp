from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bxtools_Split_V0_1_0 = CommandToolBuilder(tool="bxtools_split", base_command=["bxtools", "split"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Select verbosity level (0-4). Default: 0")), ToolInput(tag="in_analysis_id", input_type=Boolean(optional=True), prefix="--analysis-id", doc=InputDocumentation(doc="ID to prefix output files with [foo]")), ToolInput(tag="in_no_output", input_type=Boolean(optional=True), prefix="--no-output", doc=InputDocumentation(doc="Don't output BAMs (count only) [off]")), ToolInput(tag="in_min_reads", input_type=Boolean(optional=True), prefix="--min-reads", doc=InputDocumentation(doc="Minumum reads of given tag to see before writing [0]")), ToolInput(tag="in_tag", input_type=Boolean(optional=True), prefix="--tag", doc=InputDocumentation(doc="Split by a tag other than BX (e.g. MI)")), ToolInput(tag="in_bam_slash_sam_slash_cram", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bxtools_Split_V0_1_0().translate("wdl", allow_empty_container=True)

