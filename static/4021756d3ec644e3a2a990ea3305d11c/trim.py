from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Trim_V0_1_0 = CommandToolBuilder(tool="trim", base_command=["trim"], inputs=[ToolInput(tag="in_fastq_file_reads", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="Fastq file of reads")), ToolInput(tag="in_file_containing_names", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="File containing fastq file names, one per line or\ntwo per line for paired end reads.")), ToolInput(tag="in_use_num_openmp", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Use <num> openMP threads")), ToolInput(tag="in_return_only_reads", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="=30\nReturn only reads corrected and/or trimmed to >= <num>\nbp")), ToolInput(tag="in_quality_value_ascii", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Quality value ascii scale, generally 64 or 33. If not\nspecified, it will guess.")), ToolInput(tag="in_use_bwa_trim", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="=3\nUse BWA trim parameter <num>\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trim_V0_1_0().translate("wdl", allow_empty_container=True)

