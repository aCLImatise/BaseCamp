from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean

Phandango_Mapper_V0_1_0 = CommandToolBuilder(tool="phandango_mapper", base_command=["phandango_mapper"], inputs=[ToolInput(tag="in_bwa", input_type=String(optional=True), prefix="--bwa", doc=InputDocumentation(doc="Location of bwa executable [Default: bwa]")), ToolInput(tag="in_tmp_prefix", input_type=Directory(optional=True), prefix="--tmp-prefix", doc=InputDocumentation(doc="Directory to store temporary files [Default: cwd]")), ToolInput(tag="in_use_filter_p", input_type=Boolean(optional=True), prefix="--use-filter-p", doc=InputDocumentation(doc="Plot the unadjusted p-value [Default: lrt-p-value]")), ToolInput(tag="in_km_ers", input_type=String(), position=0, doc=InputDocumentation(doc="Kmers file, filtered output from SEER")), ToolInput(tag="in_reference", input_type=String(), position=1, doc=InputDocumentation(doc="Reference fasta file")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="Output file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phandango_Mapper_V0_1_0().translate("wdl", allow_empty_container=True)

