from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String

Sequana_Bam_Splitter_V0_1_0 = CommandToolBuilder(tool="sequana_bam_splitter", base_command=["sequana_bam_splitter"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="input SAM/BAM/CRAM file (default: None)")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output-directory", doc=InputDocumentation(doc="input fastq gzipped or not (default: None)")), ToolInput(tag="in_keep_unmapped", input_type=String(optional=True), prefix="--keep-unmapped", doc=InputDocumentation(doc="keep unmapped files (default: False)")), ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="input fastq gzipped or not (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Bam_Splitter_V0_1_0().translate("wdl", allow_empty_container=True)

