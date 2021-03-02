from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Phyluce_Snp_Prep_Interval_List_File_For_Picard_V0_1_0 = CommandToolBuilder(tool="phyluce_snp_prep_interval_list_file_for_picard", base_command=["phyluce_snp_prep_interval_list_file_for_picard"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="The BED file to filter.")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="The BED file to filter.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output BED file"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Snp_Prep_Interval_List_File_For_Picard_V0_1_0().translate("wdl", allow_empty_container=True)

