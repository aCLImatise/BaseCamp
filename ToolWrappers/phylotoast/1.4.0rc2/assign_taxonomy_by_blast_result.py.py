from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Assign_Taxonomy_By_Blast_Result_Py_V0_1_0 = CommandToolBuilder(tool="assign_taxonomy_by_blast_result.py", base_command=["assign_taxonomy_by_blast_result.py"], inputs=[ToolInput(tag="in_rep_set_fp", input_type=String(optional=True), prefix="--rep_set_fp", doc=InputDocumentation(doc="The set of representative sequences.")), ToolInput(tag="in_id_to_taxonomy_fp", input_type=File(optional=True), prefix="--id_to_taxonomy_fp", doc=InputDocumentation(doc="Path to tab-delimited file mapping sequences to\nassigned taxonomy.")), ToolInput(tag="in_assigned_taxonomy_fp", input_type=File(optional=True), prefix="--assigned_taxonomy_fp", doc=InputDocumentation(doc="The path to the result file. By default outputs to\nassigned_taxonomy.txt"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assign_Taxonomy_By_Blast_Result_Py_V0_1_0().translate("wdl", allow_empty_container=True)

