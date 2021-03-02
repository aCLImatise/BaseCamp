from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Pash2Sam_V0_1_0 = CommandToolBuilder(tool="pash2SAM", base_command=["pash2SAM"], inputs=[ToolInput(tag="in_pash_mappings", input_type=Boolean(optional=True), prefix="--pashMappings", doc=InputDocumentation(doc="pash mappings file")), ToolInput(tag="in_fast_q_file", input_type=Boolean(optional=True), prefix="--fastqFile", doc=InputDocumentation(doc="FASTQ file for the mapped reads. When using .fa and .qual file, use our utility faqualToFastq.rb")), ToolInput(tag="in_references_equ_nces", input_type=Boolean(optional=True), prefix="--referenceSequnces", doc=InputDocumentation(doc="file containing the reference sequences and their lengths")), ToolInput(tag="in_bisulfite_seq_flag", input_type=Boolean(optional=True), prefix="--bisulfiteSeqFlag", doc=InputDocumentation(doc="converting the mappings of a bisulfite sequencing run")), ToolInput(tag="in_sam_file", input_type=File(optional=True), prefix="--SAMFile", doc=InputDocumentation(doc="output SAM file")), ToolInput(tag="in_sample", input_type=Boolean(optional=True), prefix="--sample", doc=InputDocumentation(doc="sample name")), ToolInput(tag="in_center", input_type=Boolean(optional=True), prefix="--center", doc=InputDocumentation(doc="center name"))], outputs=[ToolOutput(tag="out_sam_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sam_file", type_hint=File()), doc=OutputDocumentation(doc="output SAM file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pash2Sam_V0_1_0().translate("wdl", allow_empty_container=True)

