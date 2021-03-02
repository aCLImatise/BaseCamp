from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rename_Fastq_Tag_V0_1_0 = CommandToolBuilder(tool="rename_fastq_tag", base_command=["rename_fastq_tag"], inputs=[ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="-fastq", doc=InputDocumentation(doc="(string)        input fastq file.")), ToolInput(tag="in_string_tag_find", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="(string)        tag to find for cutting read name")), ToolInput(tag="in_string_add_tag", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="(string)        add this tag to cut name")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="-log", doc=InputDocumentation(doc="(string)        log file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rename_Fastq_Tag_V0_1_0().translate("wdl", allow_empty_container=True)

