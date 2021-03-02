from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Bl_Fasta2Fastq_V0_1_0 = CommandToolBuilder(tool="bl_fasta2fastq", base_command=["bl-fasta2fastq"], inputs=[ToolInput(tag="in_specify_multiple_input_files", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="specify multiple FASTA input files")), ToolInput(tag="in_specify_multiple_corresponding_qual_files", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="specify multiple (corresponding) QUAL input files")), ToolInput(tag="in_specify_multiple_corresponding_output_files", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="specify multiple (corresponding) FASTQ output files")), ToolInput(tag="in_scores_qual_file", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="scores in QUAL file are ASCII (default: numerical scores)")), ToolInput(tag="in_use_offset_default", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="use OFFSET for converting ASCII quality scores (default: 33)")), ToolInput(tag="in_fast_a_two_fast_q", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bl_Fasta2Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

