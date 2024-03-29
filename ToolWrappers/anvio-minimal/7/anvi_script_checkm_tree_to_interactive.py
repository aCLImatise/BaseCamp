from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String

Anvi_Script_Checkm_Tree_To_Interactive_V0_1_0 = CommandToolBuilder(tool="anvi_script_checkm_tree_to_interactive", base_command=["anvi-script-checkm-tree-to-interactive"], inputs=[ToolInput(tag="in_tree_tree_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="TREE, --tree CHECKM TREE\nTree file generated by CheckM. (default: None)")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="The directory name that output files will be stored.\n(default: None)")), ToolInput(tag="in_tree", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="The directory name that output files will be stored.\n(default: None)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Checkm_Tree_To_Interactive_V0_1_0().translate("wdl")

