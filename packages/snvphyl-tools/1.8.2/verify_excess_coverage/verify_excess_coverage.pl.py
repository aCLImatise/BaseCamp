from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Verify_Excess_Coverage_Pl_V0_1_0 = CommandToolBuilder(tool="verify_excess_coverage.pl", base_command=["verify_excess_coverage.pl"], inputs=[ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="--bam", doc=InputDocumentation(doc="[REQUIRED]\nThe location for a specific BAM file in the dataset. Multiple BAM\nfiles can be input. Example with 3 BAM files:\n--bam bam1=/path/bam1.bam --bam bam2=/path/bam2.bam --bam\nbam3=/path/bam3.bam")), ToolInput(tag="in_cores", input_type=Boolean(optional=True), prefix="--cores", doc=InputDocumentation(doc="[optional]\nThe number of CPU cores that should be used for the calculations.")), ToolInput(tag="in_max_dev", input_type=Boolean(optional=True), prefix="--max-dev", doc=InputDocumentation(doc="[optional]\nThe maximum number of standard deviations from the mean allowable\nfor positions with a 'normal' depth of coverage.")), ToolInput(tag="in_num_cpu", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_max_std_dev", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Verify_Excess_Coverage_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

