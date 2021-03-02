from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Phyluce_Genetrees_Sort_Multilocus_Bootstraps_V0_1_0 = CommandToolBuilder(tool="phyluce_genetrees_sort_multilocus_bootstraps", base_command=["phyluce_genetrees_sort_multilocus_bootstraps"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="The input directory containing bootstrap replicates\nfor each locus")), ToolInput(tag="in_file_containing_replicate", input_type=File(optional=True), prefix="--bootstrap_replicates", doc=InputDocumentation(doc="The file containing bootstrap replicate sampling")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output directory to multi-locus bootstraps")), ToolInput(tag="in__output_output", input_type=String(), position=0, doc=InputDocumentation(doc="--output OUTPUT"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output directory to multi-locus bootstraps"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Genetrees_Sort_Multilocus_Bootstraps_V0_1_0().translate("wdl", allow_empty_container=True)

