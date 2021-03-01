from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Condense_Workflow_Py_V0_1_0 = CommandToolBuilder(tool="condense_workflow.py", base_command=["condense_workflow.py"], inputs=[ToolInput(tag="in_assigned_taxonomy_fn", input_type=File(optional=True), prefix="--assigned_taxonomy_fn", doc=InputDocumentation(doc="The taxonomy file output by the assign_taxonomy\nscript.")), ToolInput(tag="in_rep_set_fn", input_type=String(optional=True), prefix="--rep_set_fn", doc=InputDocumentation(doc="The set of representative sequences.")), ToolInput(tag="in_seqs_otus_fn", input_type=String(optional=True), prefix="--seqs_otus_fn", doc=InputDocumentation(doc="The list of OTU IDs and their associated sequence IDs.")), ToolInput(tag="in_phylogenetic_level", input_type=String(optional=True), prefix="--phylogenetic_level", doc=InputDocumentation(doc="Set the phylogenetic level at which to define OTUs for\ncondensing and downstream processing. Defaults to\nspecies level."))], outputs=[ToolOutput(tag="out_assigned_taxonomy_fn", output_type=File(optional=True), selector=InputSelector(input_to_select="in_assigned_taxonomy_fn", type_hint=File()), doc=OutputDocumentation(doc="The taxonomy file output by the assign_taxonomy\nscript."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Condense_Workflow_Py_V0_1_0().translate("wdl", allow_empty_container=True)

