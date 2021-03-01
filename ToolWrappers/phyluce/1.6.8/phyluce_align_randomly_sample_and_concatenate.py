from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String, File

Phyluce_Align_Randomly_Sample_And_Concatenate_V0_1_0 = CommandToolBuilder(tool="phyluce_align_randomly_sample_and_concatenate", base_command=["phyluce_align_randomly_sample_and_concatenate"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing NEXUS alignments to sample\nand concatenate")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output directory to hold concatenated files")), ToolInput(tag="in_sample_size", input_type=Int(optional=True), prefix="--sample-size", doc=InputDocumentation(doc="The number of loci to sample")), ToolInput(tag="in_replicates", input_type=Int(optional=True), prefix="--replicates", doc=InputDocumentation(doc="The number of replicate samples to take")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs."))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output directory to hold concatenated files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Randomly_Sample_And_Concatenate_V0_1_0().translate("wdl", allow_empty_container=True)

