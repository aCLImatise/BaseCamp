from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String

Isonclust_Write_Fastq_V0_1_0 = CommandToolBuilder(tool="isONclust_write_fastq", base_command=["isONclust", "write_fastq"], inputs=[ToolInput(tag="in_clusters", input_type=File(optional=True), prefix="--clusters", doc=InputDocumentation(doc="the file 'final_clusters.csv created by isONclust.'")), ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="Input fastq file")), ToolInput(tag="in_out_folder", input_type=Directory(optional=True), prefix="--outfolder", doc=InputDocumentation(doc="Output folder")), ToolInput(tag="in_write_clusters_reads", input_type=String(optional=True), prefix="--N", doc=InputDocumentation(doc="Write out clusters with more or equal than N reads"))], outputs=[ToolOutput(tag="out_out_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_folder", type_hint=File()), doc=OutputDocumentation(doc="Output folder"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isonclust_Write_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

