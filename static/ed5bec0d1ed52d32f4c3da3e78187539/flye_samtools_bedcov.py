from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Flye_Samtools_Bedcov_V0_1_0 = CommandToolBuilder(tool="flye_samtools_bedcov", base_command=["flye-samtools", "bedcov"], inputs=[ToolInput(tag="in_mapping_quality_threshold", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc="mapping quality threshold [0]")), ToolInput(tag="in_include_deletions_d", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="do not include deletions (D) and ref skips (N) in bedcov computation")), ToolInput(tag="in_input_fmt_option", input_type=File(optional=True), prefix="--input-fmt-option", doc=InputDocumentation(doc="[=VAL]\nSpecify a single input file format option in the form\nof OPTION or OPTION=VALUE")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference sequence FASTA FILE [null]\n")), ToolInput(tag="in_sam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_cov", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bed", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flye_Samtools_Bedcov_V0_1_0().translate("wdl")

