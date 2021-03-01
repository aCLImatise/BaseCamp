from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String

Tsvtovcf_Pl_V0_1_0 = CommandToolBuilder(tool="tsvToVcf.pl", base_command=["tsvToVcf.pl"], inputs=[ToolInput(tag="in_tsv_file_containing", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="tsv file containing the snv_alignment")), ToolInput(tag="in_directory_containing_files", input_type=Directory(optional=True), prefix="-v", doc=InputDocumentation(doc="directory containing vcf files from freebayes")), ToolInput(tag="in_directory_files_be", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="directory the new vcf files will be output to")), ToolInput(tag="in_destination", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_containing", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_new", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_will", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_be", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=7, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_directory_files_be", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_files_be", type_hint=File()), doc=OutputDocumentation(doc="directory the new vcf files will be output to"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tsvtovcf_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

