from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Methylation_Consistency_V0_1_0 = CommandToolBuilder(tool="methylation_consistency", base_command=["methylation_consistency"], inputs=[ToolInput(tag="in_min_count", input_type=Boolean(optional=True), prefix="--min-count", doc=InputDocumentation(doc="Set the minumum number of CpGs which need to be present for a read to be considered at all\n[Default: 5]. Reads with fewer CpGs than this will be discarded.")), ToolInput(tag="in_single_end", input_type=Boolean(optional=True), prefix="--single_end", doc=InputDocumentation(doc="Input files will be treated as single-end Bismark BAM files. Default: [AUTO-DETECT]")), ToolInput(tag="in_paired_end", input_type=Boolean(optional=True), prefix="--paired_end", doc=InputDocumentation(doc="Input files will be treated as paired-end Bismark BAM files. Default: [AUTO-DETECT]")), ToolInput(tag="in_sam_tools_path", input_type=Boolean(optional=True), prefix="--samtools_path", doc=InputDocumentation(doc="[path]  The path to your Samtools installation, e.g. /home/user/samtools/. Does not need to\nbe specified explicitly if Samtools is in the PATH already")), ToolInput(tag="in_lower_threshold", input_type=Boolean(optional=True), prefix="--lower_threshold", doc=InputDocumentation(doc="[INT] Percentage value up to which a read is considered (fully) un-methylated. [Default: 10].")), ToolInput(tag="in_upper_threshold", input_type=Boolean(optional=True), prefix="--upper_threshold", doc=InputDocumentation(doc="[INT] Percentage value above which a read is considered (fully) methylated. [Default: 90]."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Methylation_Consistency_V0_1_0().translate("wdl", allow_empty_container=True)

