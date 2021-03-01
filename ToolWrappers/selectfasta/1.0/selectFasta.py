from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Selectfasta_V0_1_0 = CommandToolBuilder(tool="selectFasta", base_command=["selectFasta"], inputs=[ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="-fastq", doc=InputDocumentation(doc="FILE  (fastq file to select reads from)")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="-list", doc=InputDocumentation(doc="FILE  (list of reads, fastq or fasta)")), ToolInput(tag="in_random", input_type=Boolean(optional=True), prefix="-random", doc=InputDocumentation(doc="VAL   (number of random reads to be selected from fastq file)")), ToolInput(tag="in_fast_q_two_fast_a", input_type=Boolean(optional=True), prefix="-fastq2fasta", doc=InputDocumentation(doc="(convert fastq file to fasta)")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="-fasta", doc=InputDocumentation(doc="FILE  (fasta file to select reads from)")), ToolInput(tag="in_fast_a_sel", input_type=Boolean(optional=True), prefix="-fasta_sel", doc=InputDocumentation(doc="(from fasta file select reads in -list, if not flag, reads not in list are selected)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Selectfasta_V0_1_0().translate("wdl", allow_empty_container=True)

