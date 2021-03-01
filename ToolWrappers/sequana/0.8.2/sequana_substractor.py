from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Int

Sequana_Substractor_V0_1_0 = CommandToolBuilder(tool="sequana_substractor", base_command=["sequana_substractor"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="input FastQ file (default: None)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output FastQ filename (default: reads.fastq)")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output-directory", doc=InputDocumentation(doc="input fastq gzipped or not (default:\nsequana_substractor)")), ToolInput(tag="in_mapper", input_type=String(optional=True), prefix="--mapper", doc=InputDocumentation(doc="mapper minimap2 or bwa (default: minimap2)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="threading (default: 4)")), ToolInput(tag="in_reads", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output FastQ filename (default: reads.fastq)")), ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="input fastq gzipped or not (default:\nsequana_substractor)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Substractor_V0_1_0().translate("wdl", allow_empty_container=True)

