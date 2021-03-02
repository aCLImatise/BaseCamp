from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Samtools_Bamshuf_V0_1_0 = CommandToolBuilder(tool="samtools_bamshuf", base_command=["samtools", "bamshuf"], inputs=[ToolInput(tag="in_output_to_stdout", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="output to stdout")), ToolInput(tag="in_uncompressed_bam_output", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="uncompressed BAM output")), ToolInput(tag="in_compression_level", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="compression level [1]")), ToolInput(tag="in_number_temporary_files", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="number of temporary files [64]")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_ou", input_type=Boolean(optional=True), prefix="-Ou", doc=InputDocumentation(doc="")), ToolInput(tag="in_bams_huf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_prefix", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Bamshuf_V0_1_0().translate("wdl", allow_empty_container=True)

