from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String

Humann2_Build_Custom_Database_V0_1_0 = CommandToolBuilder(tool="humann2_build_custom_database", base_command=["humann2_build_custom_database"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="the fasta input file")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="the output folder")), ToolInput(tag="in_id_mapping", input_type=File(optional=True), prefix="--id-mapping", doc=InputDocumentation(doc="the file mapping fasta ids to taxonomy")), ToolInput(tag="in_taxonomic_profile", input_type=File(optional=True), prefix="--taxonomic-profile", doc=InputDocumentation(doc="the file containing the taxonomic profile")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="the final database format")), ToolInput(tag="in_genus_abundance_threshold", input_type=String(optional=True), prefix="--genus-abundance-threshold", doc=InputDocumentation(doc="the minimum abundance for a genus to be included in the database\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="the output folder"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Build_Custom_Database_V0_1_0().translate("wdl", allow_empty_container=True)

