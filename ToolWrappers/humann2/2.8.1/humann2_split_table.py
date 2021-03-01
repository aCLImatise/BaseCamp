from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Directory

Humann2_Split_Table_V0_1_0 = CommandToolBuilder(tool="humann2_split_table", base_command=["humann2_split_table"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="additional output is printed")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="the gene table to read")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="the directory for output files")), ToolInput(tag="in_taxonomy_index", input_type=String(optional=True), prefix="--taxonomy_index", doc=InputDocumentation(doc="the index of the gene in the taxonomy data")), ToolInput(tag="in_taxonomy_level", input_type=String(optional=True), prefix="--taxonomy_level", doc=InputDocumentation(doc="the level of taxonomy for the output (if input is from picrust metagenome_contributions.py)\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="the directory for output files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Split_Table_V0_1_0().translate("wdl", allow_empty_container=True)

