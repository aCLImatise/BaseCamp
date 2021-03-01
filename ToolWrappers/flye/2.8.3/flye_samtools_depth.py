from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Flye_Samtools_Depth_V0_1_0 = CommandToolBuilder(tool="flye_samtools_depth", base_command=["flye-samtools", "depth"], inputs=[ToolInput(tag="in_list_positions_regions", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="list of positions or regions")), ToolInput(tag="in_list_input_bam", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="list of input BAM filenames, one per line [null]")), ToolInput(tag="in_read_threshold_ignore", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="read length threshold (ignore reads shorter than <int>) [0]")), ToolInput(tag="in_maximum_coverage_depth", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="maximum coverage depth [8000]. If 0, depth is set to the maximum\ninteger value, effectively removing any depth limit.")), ToolInput(tag="in_base_quality_threshold", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="base quality threshold [0]")), ToolInput(tag="in_mapping_quality_threshold", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc="mapping quality threshold [0]")), ToolInput(tag="in_chrfromto__region", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="<chr:from-to>    region")), ToolInput(tag="in_input_fmt_option", input_type=File(optional=True), prefix="--input-fmt-option", doc=InputDocumentation(doc="[=VAL]\nSpecify a single input file format option in the form\nof OPTION or OPTION=VALUE")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference sequence FASTA FILE [null]")), ToolInput(tag="in_sam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_depth", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flye_Samtools_Depth_V0_1_0().translate("wdl")

