from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Propmapped_V0_1_0 = CommandToolBuilder(tool="propmapped", base_command=["propmapped"], inputs=[ToolInput(tag="in_input_file_containing", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="An input file containing read mapping results. Both SAM or BAM\nformats are supported.")), ToolInput(tag="in_name_including_statistics", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of output file including mapping statistics.")), ToolInput(tag="in_specified_fragments_read", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="If specified, fragments (read pairs) will be counted instead of\nindividual reads. This option is only applicable for paired-end\nreads.")), ToolInput(tag="in_specified_only_properly", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="If specified, only properly paired reads will be counted. This\noption is only applicable for paired-end reads.\n"))], outputs=[ToolOutput(tag="out_name_including_statistics", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_including_statistics", type_hint=File()), doc=OutputDocumentation(doc="Name of output file including mapping statistics."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Propmapped_V0_1_0().translate("wdl", allow_empty_container=True)

