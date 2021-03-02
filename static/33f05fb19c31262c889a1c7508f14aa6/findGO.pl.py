from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Directory

Findgo_Pl_V0_1_0 = CommandToolBuilder(tool="findGO.pl", base_command=["findGO.pl"], inputs=[ToolInput(tag="in_cpu", input_type=File(optional=True), prefix="-cpu", doc=InputDocumentation(doc="<#> (number of cpus to use)")), ToolInput(tag="in_human", input_type=Boolean(optional=True), prefix="-human", doc=InputDocumentation(doc="(convert IDs and run as human [uses homologene])")), ToolInput(tag="in_custom_id", input_type=Boolean(optional=True), prefix="-customID", doc=InputDocumentation(doc="(don't convert IDs)")), ToolInput(tag="in_ontology", input_type=File(optional=True), prefix="-ontology", doc=InputDocumentation(doc="[file2.genes] ... (custom ontologies)")), ToolInput(tag="in_target_ids_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_organism", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_directory", input_type=Directory(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findgo_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

