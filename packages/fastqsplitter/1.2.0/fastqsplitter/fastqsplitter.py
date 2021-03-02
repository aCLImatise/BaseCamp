from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Fastqsplitter_V0_1_0 = CommandToolBuilder(tool="fastqsplitter", base_command=["fastqsplitter"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The fastq file to be scattered.")), ToolInput(tag="in_output", input_type=Int(optional=True), prefix="--output", doc=InputDocumentation(doc="Scatter over these output files. Multiple -o flags can\nbe used. The extensions determine which compression\nalgorithm will be used. '.gz' for gzip, '.bz2' for\nbzip2, '.xz' for xz. Other extensions will use no\ncompression.")), ToolInput(tag="in_compression_level", input_type=Int(optional=True), prefix="--compression-level", doc=InputDocumentation(doc="Only applicable when output files have a '.gz'\nextension. Default=1")), ToolInput(tag="in_threads_per_file", input_type=File(optional=True), prefix="--threads-per-file", doc=InputDocumentation(doc="Set the number of compression threads per output file.\nNOTE: more threads are only useful when using a\ncompression level > 1. Default=1")), ToolInput(tag="in_cyt_hon", input_type=Boolean(optional=True), prefix="--cython", doc=InputDocumentation(doc="Use the cython version of the file splitting\nalgorithm. (default)")), ToolInput(tag="in_python", input_type=Boolean(optional=True), prefix="--python", doc=InputDocumentation(doc="Use the python version of the file splitting\nalgorithm.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqsplitter_V0_1_0().translate("wdl", allow_empty_container=True)

