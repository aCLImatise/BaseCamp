from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Phyluce_Align_Format_Nexus_Files_For_Mrbayes_V0_1_0 = CommandToolBuilder(tool="phyluce_align_format_nexus_files_for_mrbayes", base_command=["phyluce_align_format_nexus_files_for_mrbayes"], inputs=[ToolInput(tag="in_alignments", input_type=File(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The path to the alignments directory")), ToolInput(tag="in_models", input_type=File(optional=True), prefix="--models", doc=InputDocumentation(doc="The path to the model configuration file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The path to the output file")), ToolInput(tag="in_fully_partition", input_type=Boolean(optional=True), prefix="--fully-partition", doc=InputDocumentation(doc="Fully partition the output")), ToolInput(tag="in_interleave", input_type=Boolean(optional=True), prefix="--interleave", doc=InputDocumentation(doc="Interleave sequence in nexus files")), ToolInput(tag="in_unlink", input_type=Boolean(optional=True), prefix="--unlink", doc=InputDocumentation(doc="Unlink the models"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The path to the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Format_Nexus_Files_For_Mrbayes_V0_1_0().translate("wdl", allow_empty_container=True)

