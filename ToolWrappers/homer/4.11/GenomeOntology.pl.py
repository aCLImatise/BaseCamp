from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Directory

Genomeontology_Pl_V0_1_0 = CommandToolBuilder(tool="GenomeOntology.pl", base_command=["GenomeOntology.pl"], inputs=[ToolInput(tag="in_g_size", input_type=Boolean(optional=True), prefix="-gsize", doc=InputDocumentation(doc="<#> (Genome size used for significance calculations)")), ToolInput(tag="in_bg", input_type=File(optional=True), prefix="-bg", doc=InputDocumentation(doc="(Performs additional significance calculations\nrelative to Control Peaks/Tags)\n")), ToolInput(tag="in_peak_file_slash_tag_directory", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_directory", input_type=Directory(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_additional", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomeontology_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

