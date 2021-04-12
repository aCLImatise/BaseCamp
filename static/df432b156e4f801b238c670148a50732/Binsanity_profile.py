from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Directory

Binsanity_Profile_V0_1_0 = CommandToolBuilder(tool="Binsanity_profile", base_command=["Binsanity-profile"], inputs=[ToolInput(tag="in_specify_fasta_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Specify fasta file being profiled")), ToolInput(tag="in_identify_location_indexed", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="identify location of BAM files\nBAM files should be indexed and sorted")), ToolInput(tag="in_identify_name_output", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Identify name of output file for coverage information")), ToolInput(tag="in_transform", input_type=File(optional=True), prefix="--transform", doc=InputDocumentation(doc="Indicate what type of data transformation you want in the final file [Default:log]:\nscale --> Scaled by multiplying by 100 and log transforming\nlog --> Log transform\nNone --> Raw Coverage Values\nX5 --> Multiplication by 5\nX10 --> Multiplication by 10\nX100 --> Multiplication by 100\nSQR --> Square root\nWe recommend using a scaled log transformation for initial testing.\nOther transformations can be useful on a case by case basis")), ToolInput(tag="in_specify_number_threads", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="Specify Number of Threads For Feature Counts [Default: 1]")), ToolInput(tag="in_specify_directory_deposited", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify directory for output files to be deposited [Default: Working Directory]"))], outputs=[ToolOutput(tag="out_identify_name_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_identify_name_output", type_hint=File()), doc=OutputDocumentation(doc="Identify name of output file for coverage information")), ToolOutput(tag="out_specify_directory_deposited", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_specify_directory_deposited", type_hint=File()), doc=OutputDocumentation(doc="Specify directory for output files to be deposited [Default: Working Directory]"))], container="quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Binsanity_Profile_V0_1_0().translate("wdl")

