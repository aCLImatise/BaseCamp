from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Scram_Flagstat_V0_1_0 = CommandToolBuilder(tool="scram_flagstat", base_command=["scram_flagstat"], inputs=[ToolInput(tag="in_set_input_format", input_type=String(optional=True), prefix="-I", doc=InputDocumentation(doc="Set input format:  'bam', 'sam' or 'cram'.")), ToolInput(tag="in_specifies_refseqstartend_range", input_type=String(optional=True), prefix="-R", doc=InputDocumentation(doc="[Cram] Specifies the refseq:start-end range")), ToolInput(tag="in_specifies_reference_file", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="[Cram] Specifies the reference file.")), ToolInput(tag="in_use_n_threads", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Use N threads (availability varies by format)")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scram_Flagstat_V0_1_0().translate("wdl")

