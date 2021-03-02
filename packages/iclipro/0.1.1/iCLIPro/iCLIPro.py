from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String

Iclipro_V0_1_0 = CommandToolBuilder(tool="iCLIPro", base_command=["iCLIPro"], inputs=[ToolInput(tag="in_output_folder_default", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="output folder (default is cwd - current working directory)")), ToolInput(tag="in_genomic_bin_size", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="genomic bin size (100..1000, default: 300)")), ToolInput(tag="in_number_reads_default", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="number of reads required in bin (20..500, default: 50)")), ToolInput(tag="in_flanking_distances_calculating", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="flanking distances when calculating start site overlap ratio (3..15, default: 5)")), ToolInput(tag="in_use_only_reads", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="use only reads with minimum mapping quality (mapq) (0..100, default: 10)")), ToolInput(tag="in_read_len_groups", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="read len groups (e.g.: 'A:16-39,A1:16-25,A2:26-32,A3:33-39,L:20,B:42')")), ToolInput(tag="in_generate_read_maps", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="generate read overlap maps based on these\ncomparisons (e.g.: 'A1-A3,A2-A3,A1-B,A2-B,A3-B,L-B,A-B')")), ToolInput(tag="in_flanking_region_read", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="flanking region for read overlap maps (default: 50)")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_folder_default", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder_default", type_hint=File()), doc=OutputDocumentation(doc="output folder (default is cwd - current working directory)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iclipro_V0_1_0().translate("wdl", allow_empty_container=True)

