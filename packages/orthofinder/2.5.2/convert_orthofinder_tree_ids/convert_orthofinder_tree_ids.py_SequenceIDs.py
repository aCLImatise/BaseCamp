from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Convert_Orthofinder_Tree_Ids_Py_Sequenceids_V0_1_0 = CommandToolBuilder(tool="convert_orthofinder_tree_ids.py_SequenceIDs", base_command=["convert_orthofinder_tree_ids.py", "SequenceIDs"], inputs=[ToolInput(tag="in_convert_ortho_finder_tree_ids_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tree_input", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_ids", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_species_ids", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/orthofinder:2.5.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Orthofinder_Tree_Ids_Py_Sequenceids_V0_1_0().translate("wdl")

