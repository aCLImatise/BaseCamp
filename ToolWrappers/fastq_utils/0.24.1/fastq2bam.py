from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Fastq2Bam_V0_1_0 = CommandToolBuilder(tool="fastq2bam", base_command=["fastq2bam"], inputs=[ToolInput(tag="in_cell_barcode_offset", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc=": cell barcode offset")), ToolInput(tag="in_cell_barcode_size", input_type=Int(optional=True), prefix="-C", doc=InputDocumentation(doc=": cell barcode size")), ToolInput(tag="in_umi_barcode_offset", input_type=Int(optional=True), prefix="-u", doc=InputDocumentation(doc=": UMI barcode offset")), ToolInput(tag="in_umi_barcode_size", input_type=Int(optional=True), prefix="-U", doc=InputDocumentation(doc=": UMI barcode size")), ToolInput(tag="in_sample_barcode_offset", input_type=Int(optional=True), prefix="-z", doc=InputDocumentation(doc=": sample barcode offset")), ToolInput(tag="in_sample_barcode_size", input_type=Int(optional=True), prefix="-Z", doc=InputDocumentation(doc=": sample barcode size")), ToolInput(tag="in_use_umi_tags", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc=": use 10x UMI tags instead of tags defined in the SAM specification")), ToolInput(tag="in_four", input_type=Int(optional=True), prefix="-4", doc=InputDocumentation(doc="")), ToolInput(tag="in_three", input_type=Int(optional=True), prefix="-3", doc=InputDocumentation(doc="")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="")), ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq2Bam_V0_1_0().translate("wdl")

