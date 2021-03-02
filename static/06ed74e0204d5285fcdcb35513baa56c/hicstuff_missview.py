from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Directory, String

Hicstuff_Missview_V0_1_0 = CommandToolBuilder(tool="hicstuff_missview", base_command=["hicstuff", "missview"], inputs=[ToolInput(tag="in_aligner", input_type=Int(optional=True), prefix="--aligner", doc=InputDocumentation(doc="The read alignment software to use. Can be either\nbowtie2, minimap2 or bwa. minimap2 should only be\nused for reads > 100 bp. [default: bowtie2]")), ToolInput(tag="in_binning", input_type=Int(optional=True), prefix="--binning", doc=InputDocumentation(doc="Resolution to use to preview the Hi-C map. [default: 5000]")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Write even if the output file already exists.")), ToolInput(tag="in_read_len", input_type=File(optional=True), prefix="--read-len", doc=InputDocumentation(doc="Write even if the output file already exists.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPUs to use in parallel. [default: 1]")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="Directory where temporary files will be generated.")), ToolInput(tag="in_genome", input_type=String(), position=0, doc=InputDocumentation(doc="Genome file in fasta format.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Path to the output image."))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Write even if the output file already exists.")), ToolOutput(tag="out_read_len", output_type=File(optional=True), selector=InputSelector(input_to_select="in_read_len", type_hint=File()), doc=OutputDocumentation(doc="Write even if the output file already exists."))], container="quay.io/biocontainers/hicstuff:2.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicstuff_Missview_V0_1_0().translate("wdl")

