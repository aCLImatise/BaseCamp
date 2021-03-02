from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Metaxa2_Si_V0_1_0 = CommandToolBuilder(tool="metaxa2_si", base_command=["metaxa2_si"], inputs=[ToolInput(tag="in_input_taxonomy_file", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=": Input taxonomy file from Metaxa2")), ToolInput(tag="in__output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": Output file")), ToolInput(tag="in_taxonomic_level_performing", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc=": Taxonomic level for performing inference (1 = domain -> 7 = species), default = 7 (species level)")), ToolInput(tag="in_percent_identity_cutoff", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc=": Percent identity cutoff for allowing inference, default = 97")), ToolInput(tag="in_list_all", input_type=String(optional=True), prefix="--list_all", doc=InputDocumentation(doc=": Lists all possibilities for sequence entries with multiple possible inferences, off (F) by default")), ToolInput(tag="in_multiple", input_type=String(optional=True), prefix="--multiple", doc=InputDocumentation(doc=": Decides how to handle entries with multiple possible inferences, default = keep\n('assign' will randomly assign the entry to a possible taxa)")), ToolInput(tag="in_low_identity", input_type=String(optional=True), prefix="--low_identity", doc=InputDocumentation(doc=": Decides how to handle entries with sequence identity below cutoff, default = keep")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc=": displays this help message")), ToolInput(tag="in_bugs", input_type=Boolean(optional=True), prefix="--bugs", doc=InputDocumentation(doc=": displays the bug fixes and known bugs in this version of Metaxa")), ToolInput(tag="in_license", input_type=Boolean(optional=True), prefix="--license", doc=InputDocumentation(doc=": displays licensing information"))], outputs=[ToolOutput(tag="out__output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in__output_file", type_hint=File()), doc=OutputDocumentation(doc=": Output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metaxa2_Si_V0_1_0().translate("wdl", allow_empty_container=True)

