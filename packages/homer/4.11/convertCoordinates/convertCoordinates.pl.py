from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, File

Convertcoordinates_Pl_V0_1_0 = CommandToolBuilder(tool="convertCoordinates.pl", base_command=["convertCoordinates.pl"], inputs=[ToolInput(tag="in_type", input_type=Directory(optional=True), prefix="-type", doc=InputDocumentation(doc="(input is a tag directory, peak file, tags file, or BED file, or GTF file)")), ToolInput(tag="in_number_cpus_use", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="<#> (Number of CPUs to use, default: 1)")), ToolInput(tag="in_min_match", input_type=Boolean(optional=True), prefix="-minMatch", doc=InputDocumentation(doc="<#> (minimum % of nucleotides that must match, default: 0.1)")), ToolInput(tag="in_directory", input_type=Boolean(optional=True), prefix="-directory", doc=InputDocumentation(doc="(input is a tag directory, default)")), ToolInput(tag="in_peaks", input_type=Boolean(optional=True), prefix="-peaks", doc=InputDocumentation(doc="(input is a peak file)")), ToolInput(tag="in_tags", input_type=Boolean(optional=True), prefix="-tags", doc=InputDocumentation(doc="(input is a tag file)")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc="(input is a bed file)")), ToolInput(tag="in_gtf", input_type=Boolean(optional=True), prefix="-gtf", doc=InputDocumentation(doc="(input is a gtf file)")), ToolInput(tag="in_lift_over_dot_over_dot_chain_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file_slash_directory", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file_slash_directory", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_slash_directory", output_type=File(), selector=InputSelector(input_to_select="in_output_file_slash_directory", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertcoordinates_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

