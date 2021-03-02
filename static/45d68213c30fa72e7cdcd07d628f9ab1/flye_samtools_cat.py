from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Flye_Samtools_Cat_V0_1_0 = CommandToolBuilder(tool="flye_samtools_cat", base_command=["flye-samtools", "cat"], inputs=[ToolInput(tag="in_list_input_bamcram", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="list of input BAM/CRAM file names, one per line")), ToolInput(tag="in_copy_header_file", input_type=File(optional=True), prefix="-h", doc=InputDocumentation(doc="copy the header from FILE [default is 1st input file]")), ToolInput(tag="in_output_bamcram", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output BAM/CRAM")), ToolInput(tag="in_sam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cat", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flye_Samtools_Cat_V0_1_0().translate("wdl")

