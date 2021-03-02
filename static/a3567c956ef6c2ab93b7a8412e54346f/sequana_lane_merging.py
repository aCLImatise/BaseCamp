from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int, Array

Sequana_Lane_Merging_V0_1_0 = CommandToolBuilder(tool="sequana_lane_merging", base_command=["sequana_lane_merging"], inputs=[ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output-directory", doc=InputDocumentation(doc="Where to store the new fastq files")), ToolInput(tag="in_pattern", input_type=String(optional=True), prefix="--pattern", doc=InputDocumentation(doc="pattern for the input fastq files. Use quotes if\nwildcards are used")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads per job (pigz)")), ToolInput(tag="in_queue", input_type=String(optional=True), prefix="--queue", doc=InputDocumentation(doc="queue to use on the cluster")), ToolInput(tag="in_dry_run", input_type=Array(t=String(), optional=True), prefix="--dry-run", doc=InputDocumentation(doc="just createt the script but do not launch them")), ToolInput(tag="in_se_quan_a_lane_fusion", input_type=String(), position=0, doc=InputDocumentation(doc="This searches for data stored in this format:\n<sampleID_1>/*fastq.gz\n<sampleID_2>/*fastq.gz\n<sampleID_3>/*fastq.gz"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Where to store the new fastq files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Lane_Merging_V0_1_0().translate("wdl", allow_empty_container=True)

