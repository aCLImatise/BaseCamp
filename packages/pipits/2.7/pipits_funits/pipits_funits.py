from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Boolean, Int

Pipits_Funits_V0_1_0 = CommandToolBuilder(tool="pipits_funits", base_command=["pipits_funits"], inputs=[ToolInput(tag="in_joined_quality_filtered", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="[REQUIRED] Joined, quality filtered sequences in FASTA.\nTypically output from pipits_prep")), ToolInput(tag="in_directory_output_results", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="[REQUIRED] Directory to output results")), ToolInput(tag="in_subregion_its_extracted", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="[REQUIRED] Subregion of ITS to be extracted. Must choose\neither 'ITS1' or 'ITS2' E.g. -x ITS2")), ToolInput(tag="in_retain_intermediate_files", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Retain intermediate files (Beware intermediate files use\nexcessive disk space!)")), ToolInput(tag="in_verbose_mode", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose mode")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of Threads [default: 1]"))], outputs=[ToolOutput(tag="out_directory_output_results", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_output_results", type_hint=File()), doc=OutputDocumentation(doc="[REQUIRED] Directory to output results"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pipits_Funits_V0_1_0().translate("wdl", allow_empty_container=True)

