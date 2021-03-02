from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Tqsfastq_Pl_V0_1_0 = CommandToolBuilder(tool="TQSfastq.pl", base_command=["TQSfastq.pl"], inputs=[ToolInput(tag="in_file_filenames_corresponding", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="File of filenames corresponding to fasta/fastq files with reads to interrogate\n-q Phred quality score threshold (bases less than -q XX will be clipped, default -q 10, optional)\n-n Number of consecutive -q 10 bases (default -n 30, optional)")), ToolInput(tag="in_ascii_offset_standard", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="ASCII offset (33=standard 64=illumina, default -n 33, optional)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tqsfastq_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

