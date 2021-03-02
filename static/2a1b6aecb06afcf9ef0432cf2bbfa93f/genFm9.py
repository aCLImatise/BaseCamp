from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Genfm9_V0_1_0 = CommandToolBuilder(tool="genFm9", base_command=["genFm9"], inputs=[ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="-fastq", doc=InputDocumentation(doc="file is in a fastq format")), ToolInput(tag="in_multi_fast_a", input_type=Boolean(optional=True), prefix="-multiFasta", doc=InputDocumentation(doc="FILE  with all the reads")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="for the output-file  if print option was selected (default output)")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="-size", doc=InputDocumentation(doc="of reads to generate the FM9 (default all dataset)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="for the output-file  if print option was selected (default output)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genfm9_V0_1_0().translate("wdl", allow_empty_container=True)

