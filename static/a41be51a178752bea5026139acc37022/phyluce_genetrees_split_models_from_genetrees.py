from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Phyluce_Genetrees_Split_Models_From_Genetrees_V0_1_0 = CommandToolBuilder(tool="phyluce_genetrees_split_models_from_genetrees", base_command=["phyluce_genetrees_split_models_from_genetrees"], inputs=[ToolInput(tag="in_gene_trees", input_type=File(optional=True), prefix="--genetrees", doc=InputDocumentation(doc="The cloudforest genetree file containing models")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output file to hold the parsed substitution model\ndata\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output file to hold the parsed substitution model\ndata\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Genetrees_Split_Models_From_Genetrees_V0_1_0().translate("wdl", allow_empty_container=True)

