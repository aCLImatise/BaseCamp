from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Rgt_Viz_Venn_V0_1_0 = CommandToolBuilder(tool="rgt_viz_venn", base_command=["rgt-viz", "venn"], inputs=[ToolInput(tag="in_s_one", input_type=Boolean(optional=True), prefix="-s1", doc=InputDocumentation(doc="Define the file for gene set 1 (BED or gene list)")), ToolInput(tag="in_s_two", input_type=Boolean(optional=True), prefix="-s2", doc=InputDocumentation(doc="Define the file for gene set 2 (BED or gene list)")), ToolInput(tag="in_s_three", input_type=Boolean(optional=True), prefix="-s3", doc=InputDocumentation(doc="Define the file for gene set 3 (BED or gene list)")), ToolInput(tag="in_s_four", input_type=Boolean(optional=True), prefix="-s4", doc=InputDocumentation(doc="Define the file for gene set 3 (BED or gene list)")), ToolInput(tag="in_lone", input_type=Boolean(optional=True), prefix="-l1", doc=InputDocumentation(doc="Define label on venn diagram for set 1")), ToolInput(tag="in_l_two", input_type=Boolean(optional=True), prefix="-l2", doc=InputDocumentation(doc="Define label on venn diagram for set 2")), ToolInput(tag="in_l_three", input_type=Boolean(optional=True), prefix="-l3", doc=InputDocumentation(doc="Define label on venn diagram for set 3")), ToolInput(tag="in_l_four", input_type=Boolean(optional=True), prefix="-l4", doc=InputDocumentation(doc="Define label on venn diagram for set 4")), ToolInput(tag="in_directory_name_output", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="The directory name for the output files. For example, project\nname. (default: None)")), ToolInput(tag="in_title_shown_venndiagram", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="The title shown on the top of the plot and also the folder\nname. (default: venn_diagram)")), ToolInput(tag="in_organism", input_type=Boolean(optional=True), prefix="-organism", doc=InputDocumentation(doc="Define the organism."))], outputs=[ToolOutput(tag="out_directory_name_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_name_output", type_hint=File()), doc=OutputDocumentation(doc="The directory name for the output files. For example, project\nname. (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Viz_Venn_V0_1_0().translate("wdl", allow_empty_container=True)

