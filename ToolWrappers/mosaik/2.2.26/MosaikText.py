from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Mosaiktext_V0_1_0 = CommandToolBuilder(tool="MosaikText", base_command=["MosaikText"], inputs=[ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="-fastq", doc=InputDocumentation(doc="stores the data in a FASTQ file")), ToolInput(tag="in_screen", input_type=Boolean(optional=True), prefix="-screen", doc=InputDocumentation(doc="displays the reads on the screen")), ToolInput(tag="in_axt", input_type=File(optional=True), prefix="-axt", doc=InputDocumentation(doc="stores the data in an AXT file")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="-bam", doc=InputDocumentation(doc="stores the data in a BAM file")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="-bed", doc=InputDocumentation(doc="stores the data in a BED file")), ToolInput(tag="in_el_and", input_type=File(optional=True), prefix="-eland", doc=InputDocumentation(doc="stores the data in an Eland file")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="-ref", doc=InputDocumentation(doc="displays output for a specific reference")), ToolInput(tag="in_sam", input_type=File(optional=True), prefix="-sam", doc=InputDocumentation(doc="stores the data in a SAM file")), ToolInput(tag="in_limit_output_unique", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="limit output to unique reads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mosaiktext_V0_1_0().translate("wdl", allow_empty_container=True)

