from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Ivar_Trim_V0_1_0 = CommandToolBuilder(tool="ivar_trim", base_command=["ivar", "trim"], inputs=[ToolInput(tag="in_required_sorted_bam", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="(Required) Sorted bam file, with aligned reads, to trim primers and quality")), ToolInput(tag="in_bed_file_specified", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="BED file with primer sequences and positions. If no BED file is specified, only quality trimming will be done.")), ToolInput(tag="in_minimum_length_read", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Minimum length of read to retain after trimming (Default: 30)")), ToolInput(tag="in_minimum_quality_threshold", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Minimum quality threshold for sliding window to pass (Default: 20)")), ToolInput(tag="in_width_sliding_window", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Width of sliding window (Default: 4)")), ToolInput(tag="in_include_reads_reads", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Include reads with no primers. By default, reads with no primers are excluded")), ToolInput(tag="in_required_prefix_output", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="(Required) Prefix for the output BAM file"))], outputs=[ToolOutput(tag="out_required_prefix_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_required_prefix_output", type_hint=File()), doc=OutputDocumentation(doc="(Required) Prefix for the output BAM file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ivar_Trim_V0_1_0().translate("wdl", allow_empty_container=True)

