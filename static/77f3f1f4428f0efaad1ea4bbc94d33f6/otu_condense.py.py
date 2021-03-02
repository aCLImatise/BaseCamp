from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Otu_Condense_Py_V0_1_0 = CommandToolBuilder(tool="otu_condense.py", base_command=["otu_condense.py"], inputs=[ToolInput(tag="in_input_assigned_taxonomy", input_type=File(optional=True), prefix="--input_assigned_taxonomy", doc=InputDocumentation(doc="The taxonomy file output by the assign_taxonomy\nscript.")), ToolInput(tag="in_pruned_output_file", input_type=File(optional=True), prefix="--pruned_output_file", doc=InputDocumentation(doc="The output file for the pruned taxonomy list. Defaults\nto condensed_assigned_taxonomy.txt")), ToolInput(tag="in_non_unique_output_file", input_type=File(optional=True), prefix="--non_unique_output_file", doc=InputDocumentation(doc="The file will contain a list of pruned OTU IDs\nassociated with the OTU IDs they replaced. Defaults to\nnonunique_otu_matrix.txt")), ToolInput(tag="in_phylogenetic_level", input_type=String(optional=True), prefix="--phylogenetic_level", doc=InputDocumentation(doc="Set the phylogenetic level at which to define OTUs for\ncondensing and downstream processing. Defaults to\nspecies level."))], outputs=[ToolOutput(tag="out_input_assigned_taxonomy", output_type=File(optional=True), selector=InputSelector(input_to_select="in_input_assigned_taxonomy", type_hint=File()), doc=OutputDocumentation(doc="The taxonomy file output by the assign_taxonomy\nscript.")), ToolOutput(tag="out_pruned_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_pruned_output_file", type_hint=File()), doc=OutputDocumentation(doc="The output file for the pruned taxonomy list. Defaults\nto condensed_assigned_taxonomy.txt")), ToolOutput(tag="out_non_unique_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_non_unique_output_file", type_hint=File()), doc=OutputDocumentation(doc="The file will contain a list of pruned OTU IDs\nassociated with the OTU IDs they replaced. Defaults to\nnonunique_otu_matrix.txt"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Otu_Condense_Py_V0_1_0().translate("wdl", allow_empty_container=True)

