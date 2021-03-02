from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Bamhash_Checksum_Fastq_V0_1_0 = CommandToolBuilder(tool="bamhash_checksum_fastq", base_command=["bamhash_checksum_fastq"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Debug mode. Prints full hex for each read to stdout")), ToolInput(tag="in_no_read_names", input_type=Boolean(optional=True), prefix="--no-readnames", doc=InputDocumentation(doc="Do not use read names as part of checksum")), ToolInput(tag="in_no_quality", input_type=Boolean(optional=True), prefix="--no-quality", doc=InputDocumentation(doc="Do not use read quality as part of checksum")), ToolInput(tag="in_no_paired", input_type=Boolean(optional=True), prefix="--no-paired", doc=InputDocumentation(doc="List of fastq files are not paired-end reads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamhash_Checksum_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

