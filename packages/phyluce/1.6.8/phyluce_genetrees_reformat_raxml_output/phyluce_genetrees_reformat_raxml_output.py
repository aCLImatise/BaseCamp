from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phyluce_Genetrees_Reformat_Raxml_Output_V0_1_0 = CommandToolBuilder(tool="phyluce_genetrees_reformat_raxml_output", base_command=["phyluce_genetrees_reformat_raxml_output"], inputs=[ToolInput(tag="in_gene_trees", input_type=File(optional=True), prefix="--genetrees", doc=InputDocumentation(doc="The path to the directory containing RAxML best trees")), ToolInput(tag="in_boot_reps", input_type=File(optional=True), prefix="--bootreps", doc=InputDocumentation(doc="The path to the directory containing RAxML bootreps")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output file name")), ToolInput(tag="in_program_description", input_type=String(), position=0, doc=InputDocumentation(doc="Program description"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="The output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Genetrees_Reformat_Raxml_Output_V0_1_0().translate("wdl", allow_empty_container=True)

