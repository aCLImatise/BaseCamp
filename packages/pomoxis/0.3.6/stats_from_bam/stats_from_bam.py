from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Stats_From_Bam_V0_1_0 = CommandToolBuilder(tool="stats_from_bam", base_command=["stats_from_bam"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc=".bed file of reference regions to include. (default:\nNone)")), ToolInput(tag="in_all_alignments", input_type=String(optional=True), prefix="--all_alignments", doc=InputDocumentation(doc="Include secondary and supplementary alignments.\n(default: False)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output alignment stats to file instead of stdout.\n(default: <_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)")), ToolInput(tag="in_summary", input_type=File(optional=True), prefix="--summary", doc=InputDocumentation(doc="Output summary to file instead of stderr. (default:\n<_io.TextIOWrapper name='<stderr>' mode='w'\nencoding='utf-8'>)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads for parallel processing. (default:\n1)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output alignment stats to file instead of stdout.\n(default: <_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)")), ToolOutput(tag="out_summary", output_type=File(optional=True), selector=InputSelector(input_to_select="in_summary", type_hint=File()), doc=OutputDocumentation(doc="Output summary to file instead of stderr. (default:\n<_io.TextIOWrapper name='<stderr>' mode='w'\nencoding='utf-8'>)"))], container="quay.io/biocontainers/pomoxis:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stats_From_Bam_V0_1_0().translate("wdl")

