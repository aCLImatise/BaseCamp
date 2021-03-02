from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String

Phyluce_Align_Split_Concat_Nexus_To_Loci_V0_1_0 = CommandToolBuilder(tool="phyluce_align_split_concat_nexus_to_loci", base_command=["phyluce_align_split_concat_nexus_to_loci"], inputs=[ToolInput(tag="in_nexus", input_type=File(optional=True), prefix="--nexus", doc=InputDocumentation(doc="The input NEXUS file")), ToolInput(tag="in_output_directory_store", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output directory in which to store alignments")), ToolInput(tag="in_split_concatenated_file", input_type=String(), position=0, doc=InputDocumentation(doc="Split a concatenated NEXUS file into component loci using the charsets values"))], outputs=[ToolOutput(tag="out_output_directory_store", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_store", type_hint=File()), doc=OutputDocumentation(doc="The output directory in which to store alignments"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Split_Concat_Nexus_To_Loci_V0_1_0().translate("wdl", allow_empty_container=True)

