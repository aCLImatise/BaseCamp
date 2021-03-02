from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String, File

Velveth_V0_1_0 = CommandToolBuilder(tool="velveth", base_command=["velveth"], inputs=[ToolInput(tag="in_strand_specific", input_type=Boolean(optional=True), prefix="-strand_specific", doc=InputDocumentation(doc=": for strand specific transcriptome sequencing data (default: off)")), ToolInput(tag="in_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc=": directory name for output files")), ToolInput(tag="in_hash_length", input_type=String(), position=1, doc=InputDocumentation(doc=": odd integer (if even, it will be decremented) <= 64 (if above, will be reduced)")), ToolInput(tag="in_filename", input_type=File(), position=2, doc=InputDocumentation(doc=": path to sequence file or - for standard input"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Velveth_V0_1_0().translate("wdl", allow_empty_container=True)

