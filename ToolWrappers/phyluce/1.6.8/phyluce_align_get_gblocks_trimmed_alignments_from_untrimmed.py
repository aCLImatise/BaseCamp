from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int, File

Phyluce_Align_Get_Gblocks_Trimmed_Alignments_From_Untrimmed_V0_1_0 = CommandToolBuilder(tool="phyluce_align_get_gblocks_trimmed_alignments_from_untrimmed", base_command=["phyluce_align_get_gblocks_trimmed_alignments_from_untrimmed"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing alignments to be trimmed.\n(default: None)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the resulting\nalignments. (default: None)")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format. (default: fasta)")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="The output alignment format. (default: nexus)")), ToolInput(tag="in_bone", input_type=Int(optional=True), prefix="--b1", doc=InputDocumentation(doc="The GBLOCKS -b1 proportion. (default: 0.5)")), ToolInput(tag="in_b_two", input_type=Int(optional=True), prefix="--b2", doc=InputDocumentation(doc="The GBLOCKS -b2 proportion. (default: 0.85)")), ToolInput(tag="in_b_three", input_type=Int(optional=True), prefix="--b3", doc=InputDocumentation(doc="The GBLOCKS -b3 integer value. (default: 8)")), ToolInput(tag="in_b_four", input_type=Int(optional=True), prefix="--b4", doc=InputDocumentation(doc="The GBLOCKS -b4 integer value. (default: 10)")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use. (default: INFO)")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs. (default: None)")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Process alignments in parallel using --cores for\nalignment. This is the number of PHYSICAL CPUs.\n(default: 1)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Get_Gblocks_Trimmed_Alignments_From_Untrimmed_V0_1_0().translate("wdl", allow_empty_container=True)

